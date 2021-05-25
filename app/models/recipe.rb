class Recipe < ApplicationRecord
  has_one_attached :image
  has_one_attached :cover_image

  validates :title, presence: true

end
