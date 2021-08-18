require 'rails_helper'
RSpec.describe Clothe, type: :system do

  let!(:retailer) { FactoryBot.create(:second_retailer, email: 'testretailer@test.com') }
  let!(:clothe) { FactoryBot.create(:clothe, retailer: retailer) }
  let!(:second_category) { FactoryBot.create(:second_category) }
  let!(:child_category) { FactoryBot.create(:child_category) }

  def retailer_login
    visit new_retailer_session_path
    fill_in 'retailer_email', with: 'testretailer@test.com'
    fill_in 'retailer_password', with: 'test_retailer2@test.com'
    find(:xpath, '//*[@id="new_retailer"]/div[4]/input').click
  end

  describe '服の登録機能' do
    context 'リテイラーが服を登録した場合' do
      it '服の詳細画面に遷移し、登録内容が表示される' do
        retailer_login
        sleep(0.1)
        click_on '服の登録'
        sleep(0.1)
        fill_in 'clothe[name]', with: '【web限定Sサイズ】センタープレスセミフレアスラックス'
        fill_in 'clothe[description]', with: '美脚効果抜群のセミフレアパンツに、待望のスラックスパンツが登場‼'
        fill_in 'clothe[size]', with: 'ウエスト【62cm】【65cm】
          ヒップ【94cm】【97cm】
          パンツ丈【97cm】【100cm】'
        click_on 'レディース /トップス'
        check 'Tシャツ'
        fill_in 'clothe[price]', with: '12000'
        attach_file 'clothe[images][]', "#{Rails.root}/spec/images/clothes1.jpg"
        select 'one-size', from: 'clothe[stocks_attributes][0][size]'
        select 'Black', from: 'clothe[stocks_attributes][0][color]'
        fill_in 'clothe[stocks_attributes][0][quantity]', with: '100'
        click_on '登録する'
        expect(page).to have_content('Clothe was successfully created.').and have_content('美脚効果抜群のセミフレアパンツに、待望のスラックス')
      end
    end
  end

  describe '服の編集機能' do
    context 'リテイラーが服を編集した場合' do
      it '服の詳細画面に遷移し、登録内容が反映される' do
        retailer_login
        sleep(0.1)
        click_on '企業ページ'
        sleep(0.1)
        find(:xpath, '/html/body/article/div[3]/div/ul/table/tbody/tr/td[1]/a').click
        sleep(0.1)
        click_on 'サイズ・カラーをさらに追加する'
        fill_in 'clothe[description]', with: '編集テスト！！'
        click_on 'レディース /トップス'
        check 'Tシャツ'
        click_on '更新する'
        sleep(0.1)
        expect(page).to have_content('Clothe was successfully updated.').and have_content('編集テスト')
      end
    end
  end



end
