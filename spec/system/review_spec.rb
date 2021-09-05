require 'rails_helper'
RSpec.describe Review, type: :system do

  let!(:retailer) { FactoryBot.create(:retailer) }
  let!(:clothe) { FactoryBot.create(:clothe, retailer: retailer) }
  # let!(:third_user) { FactoryBot.create(:third_user) }
  let!(:order) { FactoryBot.create(:order) }
  let!(:order_stock) { FactoryBot.create(:order_stock, order: order, stock: clothe.stocks.first) }


  describe 'レビュー CRUD 機能' do

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
      fill_in 'review[rate]', with: '5'
      fill_in 'review[content]', with: '身長160cmのわたしはSサイズで丈感がちょうどよかった！色は写真よりも鮮やかで、素材はしっかりしていて着心地がいいです！'
      click_on '登録する'
      sleep(0.1)
    end

    context '評価・内容・画像が正しく入力された場合' do
      it '洋服の詳細画面に反映される' do
        user_login_and_review
        expect(page).to have_content('レビュー投稿ありがとうございます!').and have_content('身長160cmのわたしはSサイズで丈感がちょうど')
      end
    end

    context '投稿済みのレビューを洗濯した場合' do
      it '編集画面に遷移する' do
        user_login_and_review
        click_on 'Orders'
        sleep(0.1)
        click_on '注文の詳細'
        sleep(0.1)
        click_on 'レビューを編集'
        sleep(0.1)
        expect(page).to have_content('Reviewを編集').and have_content('身長160cmのわたしはSサイズで丈感がちょうど')
      end
    end

    context 'レビューを削除した場合' do
      it '' do
        user_login_and_review
        expect(page).to have_content('レビュー投稿ありがとうございます!').and have_content('身長160cmのわたしはSサイズで丈感がちょうど')
      end
    end

  end
end
