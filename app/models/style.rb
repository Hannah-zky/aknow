class Style < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'カジュアル' },
    { id: 3, name: 'きれいめ' },
    { id: 4, name: 'シンプル' },
    { id: 5, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :users
end
