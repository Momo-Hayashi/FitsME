require 'rails_helper'
RSpec.describe User, type: :model do

  describe 'バリデーションのテスト' do
    context 'username, 誕生日、メール、パスワードが正しく入力された場合' do
      it 'バリデーションに通る' do
        user = FactoryBot.build(:user)
        expect(user).to be_valid
      end
    end

    context 'usernameが30文字以上の場合' do
      it 'バリデーションに引っかかる' do
        user = FactoryBot.build(:user, username: 'a'* 40 )
        expect(user).not_to be_valid
      end
    end

    context 'emailのフォーマットが無効の場合' do
      it 'バリデーションに引っかかる' do
        user = FactoryBot.build(:user, email: 'test_user1test.com' )
        expect(user).not_to be_valid
      end
    end

    context 'passwordが6文字以下の時' do
      it 'バリデーションに引っかかる' do
        user = FactoryBot.build(:user, password:'aaaa' )
        expect(user).not_to be_valid
      end
    end

    context '身長がマイナスの数値で入力された場合' do
      it 'バリデーションに引っかかる' do
        user = FactoryBot.build(:user, height: '-22')
        expect(user).not_to be_valid
      end
    end

  end
end
