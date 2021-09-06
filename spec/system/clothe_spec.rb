require 'rails_helper'
RSpec.describe Clothe, type: :system do

  let!(:retailer) { FactoryBot.create(:second_retailer) }
  let!(:category) { FactoryBot.create(:category) }
  let!(:child_category) { FactoryBot.create(:child_category, ancestry: category.id ) }
  let!(:second_clothe) { FactoryBot.create(:second_clothe, retailer: retailer, category_ids: child_category.id ) }


  describe '服の CRUD機能' do

    def retailer_login
      visit new_retailer_session_path
      fill_in 'retailer_email', with: 'test_retailer2@test.com'
      fill_in 'retailer_password', with: 'test_retailer2@test.com'
      find(:xpath, '//*[@id="new_retailer"]/div[2]/input').click
      sleep(0.1)
    end

    context 'リテイラーが服を登録する場合' do
      it '確認画面に遷移した後、登録できる' do
        retailer_login
        click_on '服の登録'
        sleep(0.1)
        fill_in 'clothe[name]', with: '【web限定Sサイズ】センタープレスセミフレアスラックス'
        fill_in 'clothe[description]', with: '美脚効果抜群のセミフレアパンツに、待望のスラックスパンツが登場‼'
        fill_in 'clothe[size]', with: 'ウエスト【62cm】【65cm】
          ヒップ【94cm】【97cm】
          パンツ丈【97cm】【100cm】'
        click_on 'レディース /パンツ'
        check 'Tシャツ'
        fill_in 'clothe[price]', with: '12000'
        attach_file 'clothe[images][]', "#{Rails.root}/spec/images/clothes1.jpg"
        select 'one-size', from: 'clothe[stocks_attributes][0][size]'
        select 'Black', from: 'clothe[stocks_attributes][0][color]'
        fill_in 'clothe[stocks_attributes][0][quantity]', with: '100'
        click_on '登録する'
        sleep(0.1)
        expect(current_path).to eq confirm_clothes_path
        expect(page).to have_content('下記の内容で掲載しますか？')
        click_on 'Post'
        sleep(0.1)
        expect(page).to have_content('Clothe was successfully created')
      end
    end

    context 'リテイラーが服を編集した場合' do
      it '服の詳細画面に遷移し、登録内容が反映される' do
        retailer_login
        click_on '企業ページ'
        sleep(0.1)
        find(:xpath, '/html/body/article/div[2]/div/div/div/table/tbody/tr/td[1]/a').click
        sleep(0.1)
        fill_in 'clothe[description]', with: '編集テスト！！'
        click_on '登録する'
        sleep(0.1)
        expect(page).to have_content('Clothe was successfully updated.').and have_content('編集テスト')
      end
    end

    context 'リテイラーが服を編集した場合' do
      it '服の詳細画面に遷移し、登録内容が反映される' do
        retailer_login
        click_on '企業ページ'
        sleep(0.1)
        find(:xpath, '/html/body/article/div[2]/div/div/div/table/tbody/tr/td[2]/a').click
        page.driver.browser.switch_to.alert.accept
        sleep(0.1)
        expect(page).to have_content('Clothe was successfully deleted.')
        expect(page).not_to have_content('センタープレスセミフレアスラックス')
      end
    end
  end

end
