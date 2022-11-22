class Height < ActiveHash::Base
  self.data = [
    { id: 1, name: '選択(任意)' },
    { id: 2, name: '150cm以下' },
    { id: 3, name: '151cm〜160cm' },
    { id: 4, name: '161cm〜170cm' },
    { id: 5, name: '171cm〜180cm' },
    { id: 6, name: '181cm〜190cm' },
    { id: 7, name: '191cm以上' }
  ]

  include ActiveHash::Associations
  has_many :users
end
