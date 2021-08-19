require 'rails_helper'
RSpec.describe Admin, type: :system do

  let!(:admin) { FactoryBot.create(:admin) }

  def admin_login
    visit new_admin_session_path
    fill_in 'admin_email', with: 'admin@admin.jp'
    fill_in 'admin_password', with: 'admin@admin.jp'
    find(:xpath, '//*[@id="new_admin"]/div[4]/input').click
  end

  describe 'ログイン・ログアウト機能' do
    context '管理者がログインをした場合' do
      it '管理者画面に遷移する' do
        admin_login
        sleep(0.1)
        expect(page).to have_content 'ログインしました'
        expect(current_path).to eq rails_admin_path
      end
    end

    context '管理者がログアウトをした場合' do
      it 'ホーム画面に遷移する' do
        admin_login
        sleep(0.1)
        find(:xpath, '//*[@id="secondary-navigation"]/ul/li[4]/a/span').click
        sleep(0.1)
        expect(page).to have_content 'ログアウトしました'
        expect(current_path).to eq root_path
      end
    end
  end

  describe '管理者機能' do
    context '管理者が新たに他の管理者を新規登録をした場合' do
      it '管理者が増える' do
        admin_login
        sleep(0.1)
        find(:xpath, '/html/body/div[3]/div/div[1]/ul[1]/li[17]/a').click
        sleep(0.1)
        click_on '新規作成'
        fill_in 'admin[name]', with: 'Test Admin'
        fill_in 'admin[email]', with: 'test@test.com'
        fill_in 'admin[password]', with: 'test@test.com'
        fill_in 'admin_password_confirmation', with: 'test@test.com'
        find(:xpath, '//*[@id="new_admin"]/div/div/button').click
        sleep(0.1)
        expect(page).to have_content('管理者の作成に成功しました').and have_content('test@test.com')
      end
    end

    context '特定のリテイラーを削除した場合' do
      it 'そのリテイラーがデータベースから消える' do
        retailer = FactoryBot.create(:second_retailer)
        admin_login
        sleep(0.1)
        find(:xpath, '/html/body/div[3]/div/div[1]/ul[1]/li[12]/a').click
        sleep(0.1)
        find(:xpath, '//*[@id="bulk_form"]/table/tbody/tr[1]/td[9]/ul/li[3]').click
        sleep(0.1)
        click_on '実行する'
        sleep(0.1)
        expect(page).to have_content('リテイラーの削除に成功しました')
        expect(page).not_to have_content('削除リテイラー')
      end
    end

  end

end
