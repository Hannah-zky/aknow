class Figure < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '細め' },
    { id: 3, name: '普通' },
    { id: 4, name: 'ふくよか' },
    { id: 5, name: '秘密' },
  ]

  include ActiveHash::Associations
  has_many :users
end
