class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }

  with_options presence: true do
    validates :image, :explanation
  end
end