# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Retailer, type: :system do
  let!(:retailer) { FactoryBot.create(:retailer) }

  describe 'リテイラーCRUD機能' do
    def retailer_sign_up
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
    end

    context 'リテイラーが新規登録をした場合' do
      it 'マイページに登録した情報が表示される' do
        retailer_sign_up
        expect(page).to have_content 'アカウント登録が完了しました'
      end
    end

    context 'リテイラーが退会をした場合' do
      it 'マイページに登録した情報が表示される' do
        retailer_sign_up
        click_on '退会する'
        sleep(0.1)
        page.driver.browser.switch_to.alert.accept
        sleep(0.1)
        expect(page).to have_content 'アカウントを削除しました'
        expect(current_path).to eq clothes_path
      end
    end

    context 'リテイラーがプロフィールを編集した場合' do
      it 'マイページに反映される' do
        retailer_sign_up
        click_on '企業ページ'
        sleep(0.1)
        click_on 'Edit the profile'
        sleep(0.3)
        attach_file 'retailer[logo]', "#{Rails.root}/spec/images/afends.png"
        fill_in 'retailer[current_password]', with: 'test@test.com'
        click_button 'Update'
        sleep(0.1)
        expect(page).to have_content 'アカウント情報を変更しました'
        sleep(0.1)
        click_on '企業ページ'
        sleep(0.1)
        have_selector("img[src$='afends.png']")
      end
    end
  end

  describe 'ログイン・ログアウト機能' do
    def retailer_login
      visit new_retailer_session_path
      fill_in 'retailer_email', with: 'test_retailer1@test.com'
      fill_in 'retailer_password', with: 'test_retailer1@test.com'
      find(:xpath, '//*[@id="new_retailer"]/div[2]/input').click
    end

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
        find(:xpath, '/html/body/header/ul/div/li[4]/a').click
        sleep(0.1)
        expect(page).to have_content 'ログアウトしました'
        expect(current_path).to eq clothes_path
      end
    end
  end
end
