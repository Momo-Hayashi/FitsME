# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Cart, type: :model do
  user = FactoryBot.build(:user)
  stock = FactoryBot.build(:stock)

  describe 'バリデーションのテスト' do
    context '個数・ユーザ・ストックのデータが正常に渡されたされた場合' do
      it 'バリデーションに通る' do
        cart = FactoryBot.build(:cart, user: user, stock: stock)
        expect(cart).to be_valid
      end
    end

    context '個数がマイナスの数値の場合' do
      it 'バリデーションに引っかかる' do
        cart = FactoryBot.build(:cart, amount: '-1', user: user, stock: stock)
        expect(cart).not_to be_valid
      end
    end
  end
end
