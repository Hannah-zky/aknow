class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '選択してください' },
    { id: 2, name: 'トップス' },
    { id: 3, name: 'ジャケット/アウター' },
    { id: 4, name: 'パンツ' },
    { id: 5, name: 'スカート' },
    { id: 6, name: 'オールインワン' },
    { id: 7, name: 'ワンピース' },
    { id: 8, name: 'スーツ' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items
end
