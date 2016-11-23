class Restaurant < ApplicationRecord
  CATEGORIES = ["italian", "chinese", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
