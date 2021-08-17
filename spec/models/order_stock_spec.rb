require 'rails_helper'
RSpec.describe OrderStock, type: :model do

  order = FactoryBot.build(:order)
  stock = FactoryBot.build(:stock)

  describe 'バリデーションのテスト' do
    context '個数のデータが正しく渡されたされた場合' do
      it 'バリデーションに通る' do
        order_stock = FactoryBot.build(:order_stock, order: order, stock:stock )
        expect(order_stock).to be_valid
      end
    end

    context '個数が空白の場合' do
      it 'バリデーションに引っかかる' do
        order_stock = FactoryBot.build(:order_stock, amount:nil, order: order, stock:stock )
        expect(order_stock).not_to be_valid
      end
    end

  end
end
