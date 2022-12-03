require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿機能' do
    context 'コメント投稿できる場合' do
      it 'commentの入力が存在すれば投稿できる' do
        expect(@comment).to be_valid
      end
    end

    context 'コメント投稿できない場合' do
      it 'commentが空では投稿できない' do
        @comment.comment = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Commentを入力してください')
      end
      it 'userが紐付いていなければ投稿できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Userを入力してください')
      end
      it 'itemが紐付いていなければ投稿できない' do
        @comment.item = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Itemを入力してください')
      end
    end
  end
end
