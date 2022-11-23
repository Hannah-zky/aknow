class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category


  validates :category_id, numericality: { other_than: 1, message: "を選択してください" }

  with_options presence: true do
    validates :image, :explanation
  end
end