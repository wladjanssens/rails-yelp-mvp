class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true}
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }
end
