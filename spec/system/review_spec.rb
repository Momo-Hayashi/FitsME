require 'rails_helper'
RSpec.describe Review, type: :system do

  describe 'レビュー CRUD 機能' do

    let!(:retailer) { FactoryBot.create(:retailer) }
    let!(:clothe) { FactoryBot.create(:clothe, retailer: retailer) }
    let!(:order) { FactoryBot.create(:order) }
    let!(:order_stock) { FactoryBot.create(:order_stock, order: order, stock: clothe.stocks.first) }

    def user_login_and_review
      visit new_user_session_path
      fill_in 'user_email', with: 'testuser1@test.com'
      fill_in 'user_password', with: 'testuser1@test.com'
      find(:xpath, '//*[@id="new_user"]/div[2]/input').click
      sleep(0.1)
      click_on 'Orders'
      sleep(0.1)
      click_on '注文の詳細'
      sleep(0.1)
      click_on 'レビューを書いてポイントGet'
      sleep(0.1)
      find(:xpath, '//*[@id="star"]/img[5]').click
      fill_in 'review[content]', with: '身長160cmのわたしはSサイズで丈感がちょうどよかった！色は写真よりも鮮やかで、素材はしっかりしていて着心地がいいです！'
      click_on '登録する'
      sleep(0.1)
      click_on 'Post!'
      sleep(0.1)
    end

    context '評価・内容・画像が正しく入力された場合' do
      it 'レビューが投稿され、洋服の詳細画面に反映される' do
        user_login_and_review
        sleep(0.1)
        expect(page).to have_content('レビュー投稿ありがとうございます').and have_content('身長160cmのわたしはSサイズで丈感がちょうど')
      end
    end

    context '投稿済みのレビューを選択した場合' do
      def edit_review
        user_login_and_review
        click_on 'Orders'
        sleep(0.1)
        click_on '注文の詳細'
        sleep(0.1)
        click_on 'レビューを編集'
        sleep(0.1)
      end

      it '編集画面に遷移する' do
        edit_review
        expect(page).to have_content('Reviewを編集').and have_content('身長160cmのわたしはSサイズで丈感がちょうど')
      end

      it '編集した内容が反映されレビュー内容が更新される' do
        edit_review
        fill_in 'review[content]', with: '編集ずみ'
        click_on '登録する'
        sleep(0.1)
        expect(page).to have_content('レビューを更新しました').and have_content('編集ずみ')
      end
    end

    context 'レビューを削除した場合' do
      it 'Review一覧に投稿済みのレビューが表示されなくなる' do
        user_login_and_review
        click_on 'Delete'
        page.driver.browser.switch_to.alert.accept
        sleep(0.1)
        expect(page).to have_content('レビューを削除しました')
        expect(page).not_to have_content('身長160cmのわたしはSサイズで丈感がちょうど')
      end
    end

  end
end
