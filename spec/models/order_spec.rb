require 'rails_helper'
RSpec.describe Order, type: :model do

  user = FactoryBot.build(:user)

  describe 'バリデーションのテスト' do
    context 'アイテム名・詳細・サイズ・値段・画像が正しく入力された場合' do
      it 'バリデーションに通る' do
        order = FactoryBot.build(:order, user: user)
        expect(order).to be_valid
      end
    end

    context '値段がマイナスの数値の場合' do
      it 'バリデーションに引っかかる' do
        order = FactoryBot.build(:order, user: user)
        expect(order).not_to be_valid
      end
    end

  end
end
