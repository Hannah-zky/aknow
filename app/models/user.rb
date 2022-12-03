class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :comments, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :height
  belongs_to :figure
  belongs_to :sex
  belongs_to :age
  belongs_to :style

  with_options presence: true do
    validates :name
    validates :user_name, uniqueness: { case_sensitive: true }, format: { with: /[a-z\d]/i }
  end

  VARID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,}+\z/i.freeze
  validates :password, format: { with: VARID_PASSWORD_REGEX }
end
