require 'rails_helper'
RSpec.describe Address, type: :model do

  user = FactoryBot.build(:user)

  describe 'バリデーションのテスト' do
    context '氏名・住所・電話番号が正しく入力された場合' do
      it 'バリデーションに通る' do
        address = FactoryBot.build(:address, user: user)
        expect(address).to be_valid
      end
    end

    context 'first_nameが30文字以上の場合' do
      it 'バリデーションに引っかかる' do
        address = FactoryBot.build(:address, first_name: 'a'* 101, user: user )
        expect(address).not_to be_valid
      end
    end

    context 'postcodeが-を含む場合' do
      it 'バリデーションに引っかかる' do
        address = FactoryBot.build(:address, postcode: '111-1111', user: user )
        expect(address).not_to be_valid
      end
    end

    context 'postcodeが文字を含む場合' do
      it 'バリデーションに引っかかる' do
        address = FactoryBot.build(:address, postcode: 'aaaaaaa', user: user )
        expect(address).not_to be_valid
      end
    end

    context '都道府県が選択されていない場合' do
      it 'バリデーションに引っかかる' do
        address = FactoryBot.build(:address, postcode: nil, user: user )
        expect(address).not_to be_valid
      end
    end

    context '市区町村が記入されていない場合' do
      it 'バリデーションに引っかかる' do
        address = FactoryBot.build(:address, address_city: nil, user: user )
        expect(address).not_to be_valid
      end
    end

    context '番地名が100文字以上の場合' do
      it 'バリデーションに引っかかる' do
        address = FactoryBot.build(:address, address_street: 'a'* 101, user: user )
        expect(address).not_to be_valid
      end
    end

    context '電話番号が数字じゃない場合' do
      it 'バリデーションに引っかかる' do
        address = FactoryBot.build(:address, phone_number: 'a'* 10, user: user )
        expect(address).not_to be_valid
      end
    end

    context '電話番号が2桁以下の場合' do
      it 'バリデーションに引っかかる' do
        address = FactoryBot.build(:address, phone_number: '1'* 9, user: user )
        expect(address).not_to be_valid
      end
    end

  end
end
