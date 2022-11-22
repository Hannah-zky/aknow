require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it 'name、user_name、email、password、password_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'nameが空では登録できない' do
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('名前を入力してください')
      end
      it 'user_nameが空では登録できない' do
        @user.user_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('ユーザーIDを入力してください', 'ユーザーIDは不正な値です')
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('メールアドレスを入力してください')
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        binding.pry
        expect(@user.errors.full_messages).to include('パスワードを入力してください', 'パスワードは不正な値です', 'パスワード（確認用）とパスワードの入力が一致しません')
      end
      it 'passwordが7文字以下では登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'passwordが半角数字のみでは登録できない' do
        @user.password = '11111111'
        @user.password_confirmation = '11111111'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'passwordが半角英字のみでは登録できない' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'passwordが全角では登録できない' do
        @user.password = 'ああああああ'
        @user.password_confirmation = 'ああああああ'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = '1111aaaa'
        @user.password_confirmation = '1234abcd'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end
      it '重複したemailが存在する場合は登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('メールアドレスはすでに存在します')
      end
      it 'emailは@を含まないと登録できない' do
        @user.email = 'testmail'
        @user.valid?
        expect(@user.errors.full_messages).to include('メールアドレスは不正な値です')
      end
      it 'user_nameが半角英数字以外では登録できない' do
        @user.user_name = '花子'
        @user.valid?
        expect(@user.errors.full_messages).to include('ユーザーIDは不正な値です')
      end
      it '重複したuser_nameが存在する場合は登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, user_name: @user.user_name)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('ユーザーIDはすでに存在します')
      end
    end
  end
end
