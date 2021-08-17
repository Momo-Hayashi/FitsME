require 'rails_helper'
RSpec.describe Retailer, type: :model do

  describe 'バリデーションのテスト' do
    context '会社名・住所・メール・パスワードが正しく入力された場合' do
      it 'バリデーションに通る' do
        retailer = FactoryBot.build(:retailer)
        expect(retailer).to be_valid
      end
    end

    context '会社名が100文字以上の場合' do
      it 'バリデーションに引っかかる' do
        retailer = FactoryBot.build(:retailer, name: 'a'* 101 )
        expect(retailer).not_to be_valid
      end
    end

    context 'website_urlがurlじゃない場合' do
      it 'バリデーションに引っかかる' do
        retailer = FactoryBot.build(:retailer, website_url: 'diveintocode.jp' )
        expect(retailer).not_to be_valid
      end
    end

    context 'emailのフォーマットが無効の場合' do
      it 'バリデーションに引っかかる' do
        retailer = FactoryBot.build(:retailer, email: 'test_user1test.com' )
        expect(retailer).not_to be_valid
      end
    end

    context '電話番号が2桁以下の場合' do
      it 'バリデーションに引っかかる' do
        retailer = FactoryBot.build(:retailer, phone_number: '1'* 9 )
        expect(retailer).not_to be_valid
      end
    end

    context 'ロゴとして画像を一枚追加した場合' do
      it 'バリデーションに通る' do
        retailer = FactoryBot.build(:retailer)
        retailer.logo.attach(io: File.open("./spec/images/afends.png"), filename: 'afends.png')
        expect(retailer).to be_valid
      end
    end

  end
end
