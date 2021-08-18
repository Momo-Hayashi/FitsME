require 'rails_helper'
RSpec.describe User, type: :system do

  let!(:user) { FactoryBot.create(:user) }

  def user_login
    visit new_user_session_path
    fill_in 'user_email', with: 'testuser1@test.com'
    fill_in 'user_password', with: 'testuser1@test.com'
    find(:xpath, '//*[@id="new_user"]/div[4]/input').click
  end

  describe 'ユーザ登録機能' do
    context 'ユーザーが新規登録をした場合' do
      it 'マイページに登録した情報が表示される' do
        visit new_user_registration_path
        fill_in 'user_username', with: 'Testing'
        fill_in 'user_email', with: 'test@test.com'
        select '2000', from: 'user_birthday_1i'
        select '10', from: 'user_birthday_2i'
        select '10', from: 'user_birthday_3i'
        fill_in 'user_password', with: 'test@test.com'
        fill_in 'user_password_confirmation', with: 'test@test.com'
        find(:xpath, '//*[@id="new_user"]/div[6]/input').click
        sleep(0.1)
        expect(page).to have_content 'アカウント登録が完了しました'
        expect(current_path).to eq users_show_path
      end
    end
  end

  describe 'ログイン・ログアウト機能' do
    context 'ユーザーがログインをした場合' do
      it 'マイページに遷移し、登録済みの情報が表示される' do
        user_login
        expect(page).to have_content 'ログインしました'
        expect(current_path).to eq users_show_path
      end
    end

    context 'ユーザーがログアウトをした場合' do
      it 'ホーム画面に遷移する' do
        user_login
        find(:xpath, '/html/body/header/ul/li[6]/a').click
        sleep(0.1)
        expect(page).to have_content 'ログアウトしました'
        expect(current_path).to eq root_path
      end
    end
  end

  describe 'プロフィール編集機能' do
    context 'ユーザーが住所を登録した場合' do
      it 'マイページに反映される' do
        user_login
        sleep(0.1)
        click_on 'Edit the profile'
        sleep(0.1)
        fill_in 'user[addresses_attributes][0][last_name]', with: 'テスト'
        fill_in 'user[addresses_attributes][0][first_name]', with: '太郎'
        fill_in 'user[addresses_attributes][0][postcode]', with: '1111111'
        select '東京都', from: 'user[addresses_attributes][0][prefecture_code]'
        fill_in 'user[addresses_attributes][0][address_city]', with: '渋谷区'
        fill_in 'user[addresses_attributes][0][address_street]', with: '渋谷市1-2-3'
        fill_in 'user[addresses_attributes][0][phone_number]', with: '1234567890'
        click_button 'Update'
        sleep(0.1)
        expect(page).to have_content 'アカウント情報を変更しました'
        find(:xpath, '/html/body/header/ul/li[2]/a').click
        sleep(0.1)
        expect(page).to have_content '渋谷区 渋谷市1-2-3'
      end
    end

    context 'ユーザーが身長を登録した場合' do
      it 'マイページに反映される' do
        user_login
        sleep(0.1)
        click_on 'Edit the profile'
        sleep(0.1)
        fill_in 'user[height]', with: '177.7'
        click_button 'Update'
        sleep(0.1)
        expect(page).to have_content 'アカウント情報を変更しました'
        find(:xpath, '/html/body/header/ul/li[2]/a').click
        sleep(0.1)
        expect(page).to have_content '177.7'
      end
    end
  end

end
