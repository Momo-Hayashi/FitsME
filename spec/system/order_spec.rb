require 'rails_helper'
RSpec.describe '購入機能', type: :system do

  let!(:retailer) { FactoryBot.create(:retailer) }
  let!(:clothe) { FactoryBot.create(:clothe, retailer: retailer) }
  let!(:user) { FactoryBot.create(:user) }
  let!(:cart) { FactoryBot.create(:cart, user: user, stock: clothe.stocks.first) }

  describe '服の購入機能' do

    def user_login_add_item
      visit new_user_session_path
      fill_in 'user_email', with: 'testuser1@test.com'
      fill_in 'user_password', with: 'testuser1@test.com'
      find(:xpath, '//*[@id="new_user"]/div[2]/input').click
      sleep(0.1)
      click_on 'Cart'
      sleep(0.1)
    end

    context '服をカートに追加した場合（CRUD）' do
      before { user_login_add_item }
      it 'カートページに表示される' do
        expect(current_path).to eq carts_path
        expect(page).to have_content('センタープレスセミフレアスラックス')
      end

      it 'カート内で個数を変更できる' do
        fill_in 'cart[amount]', with: '2'
        click_on '更新'
        sleep(0.1)
        expect(page).to have_content('カートの個数を更新しました').and have_content('24,000')
      end

      it 'カートのアイテムを削除できる' do
        click_on 'カートから削除'
        sleep(0.1)
        expect(page).to have_content('をカートから削除しました').and have_content('カートに商品を追加')
      end
    end

    context '住所が登録済みの場合' do
      it '購入へすすめる' do
        user_login_add_item
        expect(current_path).to eq carts_path
        expect(page).to have_link '購入へすすむ'
      end
    end

    context '住所が未登録の場合' do
      it '住所登録しないと購入に進めない' do
        user_login_add_item
        click_on 'My page'
        sleep(0.1)
        click_on 'このお届け先を削除'
        page.driver.browser.switch_to.alert.accept
        sleep(0.1)
        click_on 'Cart'
        sleep(0.1)
        expect(page).to have_link 'お届け先を登録する'
        expect(page).not_to have_link '購入へすすむ'
      end
    end

    context 'お届け先を指定しない場合' do
      it 'alertが出て支払いに進めない' do
        user_login_add_item
        click_on '購入へすすむ'
        sleep(0.1)
        click_on '購入へすすむ'
        sleep(0.1)
        expect(page).to have_content '住所の登録/選択をお願いします'
        expect(current_path).to eq cart_confirm_path(cart.id)
      end
    end

    context '保有ポイント以上のポイント数を使おうとした場合' do
      it 'alertが出て支払いに進めない' do
        user_login_add_item
        click_on '購入へすすむ'
        sleep(0.1)
        fill_in 'cart[using_points]', with: '10000'
        click_on '購入へすすむ'
        sleep(0.1)
        expect(page).to have_content '保有ポイント数以上のポイントはご利用できません'
        expect(current_path).to eq cart_confirm_path(cart.id)
      end
    end

    context '服を購入した場合' do
      it '購入履歴に表示される', js: true do
        user_login_add_item
        click_on '購入へすすむ'
        sleep(0.1)
        check('cart[address_ids][]')
        click_on '購入へすすむ'
        sleep(0.1)
        click_on 'カードで支払う'
        sleep(0.1)
        Capybara.within_frame 'payjp-checkout-iframe' do
          fill_in 'payjp_cardNumber', with: '4242424242424242'
          fill_in 'payjp_cardExpiresMonth',  with: '12'
          fill_in 'payjp_cardExpiresYear', with: '30'
          fill_in 'payjp_cardCvc', with: '123'
          fill_in 'payjp_cardName', with: 'TEST'
          click_button 'カードで支払う'
        end
        sleep(0.4)
        expect(page).to have_content('購入処理が完了しました！').and have_content('注文の詳細')
        expect(current_path).to eq orders_path
      end
    end

  end
end
