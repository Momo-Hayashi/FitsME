require 'rails_helper'
RSpec.describe Stock, type: :model do

  describe 'バリデーションのテスト' do
    context 'サイズ・カラー・数量が正しく入力された場合' do
      it 'バリデーションに通る' do
        stock = FactoryBot.build(:stock)
        expect(stock).to be_valid
      end
    end

    context 'サイズが選択されていない場合' do
      it 'バリデーションに引っかかる' do
        stock = FactoryBot.build(:stock, size:'')
        expect(stock).not_to be_valid
      end
    end

  end
end
