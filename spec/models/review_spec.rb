# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Review, type: :model do
  user = FactoryBot.build(:user)
  clothe = FactoryBot.build(:clothe)

  describe 'バリデーションのテスト' do
    context '評価・内容・画像が正しく入力された場合' do
      it 'バリデーションに通る' do
        review = FactoryBot.build(:review, user: user, clothe: clothe)
        expect(review).to be_valid
      end
    end

    context 'rateが5以上の数字の場合' do
      it 'バリデーションに引っかかる' do
        review = FactoryBot.build(:review, rate: '6', user: user, clothe: clothe)
        expect(review).not_to be_valid
      end
    end
  end
end
