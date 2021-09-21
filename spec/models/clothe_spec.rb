# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Clothe, type: :model do
  retailer = FactoryBot.build(:retailer, email: 'retailer@retailer.jp')

  describe 'バリデーションのテスト' do
    context 'アイテム名・詳細・サイズ・値段・画像が正しく入力された場合' do
      it 'バリデーションに通る' do
        clothe = FactoryBot.build(:clothe, retailer: retailer)
        expect(clothe).to be_valid
      end
    end

    context '値段がマイナスの数値の場合' do
      it 'バリデーションに引っかかる' do
        clothe = FactoryBot.build(:clothe, price: '-100', retailer: retailer)
        expect(clothe).not_to be_valid
      end
    end

    context '画像が添付されていない場合' do
      it 'バリデーションに引っかかる' do
        clothe = FactoryBot.build(:clothe, images: nil, retailer: retailer)
        expect(clothe).not_to be_valid
      end
    end

    context '在庫情報がない場合' do
      it 'バリデーションに引っかかる' do
        clothe = FactoryBot.build(:clothe, retailer: retailer)
        clothe.stocks.build(size: '', color: '', quantity: '')
        expect(clothe).not_to be_valid
      end
    end
  end
end
