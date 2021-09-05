require 'rails_helper'
RSpec.describe Favorite, type: :system do

  let!(:retailer) { FactoryBot.create(:retailer, email: 'testretailer@test.com') }
  let!(:clothe) { FactoryBot.create(:clothe, retailer: retailer) }
  let!(:user) { FactoryBot.create(:user) }

  describe '服のお気に入り登録機能' do

    def user_login
      visit new_user_session_path
      fill_in 'user_email', with: 'testuser1@test.com'
      fill_in 'user_password', with: 'testuser1@test.com'
      find(:xpath, '//*[@id="new_user"]/div[2]/input').click
      sleep(0.1)
      find(:xpath, '/html/body/header/ul/li/a/img').click
      sleep(0.1)
      click_on 'センタープレスセミフレアスラックス'
      sleep(0.1)
      click_on 'お気に入りに追加'
    end

    context 'ユーザーがログイン後、服をお気に入り登録した場合' do
      it 'お気に入り一覧に服が登録される' do
        user_login
        sleep(0.1)
        expect(page).to have_content('をお気に入り登録しました！')
        click_on 'Favorites'
        sleep(0.1)
        expect(page).to have_content('センタープレスセミフレアスラックス')
      end
    end

    context 'ユーザーがログイン後、お気にいり済みの服をお気に入り解除した場合' do
      it 'お気に入り一覧から服が消える' do
        user_login
        sleep(0.1)
        click_on 'お気に入り解除する'
        sleep(0.1)
        expect(page).to have_content('お気に入り解除しました')
        click_on 'Favorites'
        sleep(0.1)
        expect(page).not_to have_content('センタープレスセミフレアスラックス')
      end
    end

    context 'ユーザーがログインせずに、服をお気に入り登録した場合' do
      it 'ログイン画面にリダイレクトする' do
        visit clothes_path
        sleep(0.1)
        click_on 'センタープレスセミフレアスラックス'
        sleep(0.1)
        click_on 'お気に入りに追加'
        sleep(0.1)
        expect(page).to have_content('ログインもしくはアカウント登録してください')
      end
    end

  end
end
