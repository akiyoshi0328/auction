class Item < ApplicationRecord
  validates :name, presence: true ,length: {maximum: 50}
  validates :description, presence: true ,length: {maximum: 2000}
  validates :price,presence: true,
  numericality: {only_integer:true,greater_than_or_equal_to: 1 }

  validates :seller, presence: true, length: {maximum: 50}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,       presence: true, format: { with: VALID_EMAIL_REGEX }

  VALID_IMAGE_REGEX = /\.(jpg|jpeg|png|gif|bmp)\z/i
  validates :image_url, presence: true, format: {with: VALID_IMAGE_REGEX}
end
