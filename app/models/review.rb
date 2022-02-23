class Review < ApplicationRecord

  RATING = (0..5)

  belongs_to :restaurant

  validates :rating, :content, presence:true
  validates :rating, inclusion: { in: RATING }
  validates :rating, numericality: { only_integer: true }

end
