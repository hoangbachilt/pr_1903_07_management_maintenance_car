class Category < ApplicationRecord
  has_many :cars
  has_one_attached :logo_brand
end
