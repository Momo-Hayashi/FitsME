require 'rails_helper'
RSpec.describe '購入機能', type: :system do

  let!(:retailer) { FactoryBot.create(:retailer) }
  let!(:clothe) { FactoryBot.create(:clothe, retailer: retailer) }
  let!(:user) { FactoryBot.create(:user) }

  describe '服の購入機能' do

    def user_login
      visit new_user_session_path
      fill_in 'user_email', with: 'testuser1@test.com'
      fill_in 'user_password', with: 'testuser1@test.com'
      find(:xpath, '//*[@id="new_user"]/div[2]/input').click
      sleep(0.1)
      find(:xpath, '/html/body/header/ul/li/a/img').click
      sleep(0.1)
    end

    context 'ユーザーが服を購入した場合' do
      it '購入履歴に表示される', js: true do
        user_login
        click_on 'センタープレスセミフレアスラックス'
        sleep(0.1)
        click_on 'Add to Cart'
        sleep(0.1)
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
      end
    end

  end
end
