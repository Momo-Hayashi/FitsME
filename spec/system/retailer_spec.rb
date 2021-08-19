require 'rails_helper'
RSpec.describe Retailer, type: :system do

  let!(:retailer) { FactoryBot.create(:retailer) }

  def retailer_login
    visit new_retailer_session_path
    fill_in 'retailer_email', with: 'test_retailer1@test.com'
    fill_in 'retailer_password', with: 'test_retailer1@test.com'
    find(:xpath, '//*[@id="new_retailer"]/div[4]/input').click
  end

  describe 'リテイラー登録機能' do
    context 'リテイラーが新規登録をした場合' do
      it 'マイページに登録した情報が表示される' do
        visit new_retailer_registration_path
        sleep(0.1)
        fill_in 'retailer[name]', with: 'Test Company'
        fill_in 'retailer[email]', with: 'test@test.com'
        fill_in 'retailer[phone_number]', with: '12345678901'
        fill_in 'retailer[address]', with: '東京都渋谷区渋谷市1-2-3'
        fill_in 'retailer[password]', with: 'test@test.com'
        fill_in 'retailer[password_confirmation]', with: 'test@test.com'
        find(:xpath, '//*[@id="new_retailer"]/div[8]/input').click
        sleep(0.1)
        expect(page).to have_content 'アカウント登録が完了しました'
      end
    end
  end

  describe 'ログイン・ログアウト機能' do
    context 'リテイラーがログインをした場合' do
      it 'マイページに遷移し、登録済みの情報が表示される' do
        retailer_login
        expect(page).to have_content 'ログインしました'
        expect(current_path).to eq retailers_path(retailer.id)
      end
    end

    context 'リテイラーがログアウトをした場合' do
      it 'ホーム画面に遷移する' do
        retailer_login
        find(:xpath, '/html/body/header/ul/li[5]/a').click
        sleep(0.1)
        expect(page).to have_content 'ログアウトしました'
        expect(current_path).to eq root_path
      end
    end
  end

  describe 'プロフィール編集機能' do
    context 'リテイラーがロゴを登録した場合' do
      it 'マイページに反映される' do
        retailer_login
        sleep(0.1)
        click_on 'Edit the profile'
        sleep(0.1)
        attach_file 'retailer[logo]', "#{Rails.root}/spec/images/afends.png"
        fill_in 'retailer[current_password]', with: 'test_retailer1@test.com'
        click_button 'Update'
        sleep(0.1)
        expect(page).to have_content 'アカウント情報を変更しました'
        find(:xpath, '/html/body/header/ul/li[2]/a').click
        sleep(0.1)
        have_selector("img[src$='afends.png']")
      end
    end

  end

end
