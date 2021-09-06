require 'rails_helper'
RSpec.describe User, type: :system do

  let!(:user) { FactoryBot.create(:user) }

  describe 'ユーザ CRUD機能' do

    def user_sign_in
      visit new_user_registration_path
      fill_in 'user_username', with: 'Testing'
      fill_in 'user_email', with: 'test@test.com'
      select '2000', from: 'user_birthday_1i'
      select '10', from: 'user_birthday_2i'
      select '10', from: 'user_birthday_3i'
      fill_in 'user_password', with: 'test@test.com'
      fill_in 'user_password_confirmation', with: 'test@test.com'
      find(:xpath, '//*[@id="new_user"]/div/input').click
      sleep(0.1)
    end

    context 'ユーザーが新規登録をした場合' do
      it 'マイページに登録した情報が表示される' do
        user_sign_in
        expect(page).to have_content 'アカウント登録が完了しました'
        expect(current_path).to eq users_show_path
      end
    end

    context 'ユーザーが登録内容を編集した場合' do
      it 'マイページに更新した内容が表示される' do
        user_sign_in
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
        expect(page).to have_content '渋谷区 渋谷市1-2-3'
      end
    end

    context 'ユーザーが「退会」をクリックした場合' do
      it 'メイン画面に戻り、ログインできなくなる' do
        user_sign_in
        click_on '退会する'
        sleep(0.1)
        page.driver.browser.switch_to.alert.accept
        sleep(0.1)
        expect(page).to have_content 'アカウントを削除しました'
        expect(current_path).to eq clothes_path
        visit new_user_session_path
        fill_in 'user_email', with: 'test@test.com'
        fill_in 'user_password', with: 'test@test.com'
        find(:xpath, '//*[@id="new_user"]/div[2]/input').click
        expect(page).to have_content 'メールアドレスまたはパスワードが違います。'
        expect(current_path).to eq new_user_session_path
      end
    end

  end

  describe 'ログイン・ログアウト機能' do

    def user_login
      visit new_user_session_path
      fill_in 'user_email', with: 'testuser1@test.com'
      fill_in 'user_password', with: 'testuser1@test.com'
      find(:xpath, '//*[@id="new_user"]/div[2]/input').click
    end

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
        click_on  'Log out'
        sleep(0.1)
        expect(page).to have_content 'ログアウトしました'
        expect(current_path).to eq clothes_path
      end
    end
  end

end
