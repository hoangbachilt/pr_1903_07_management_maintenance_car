class Car < ApplicationRecord
  belongs_to :Category
  has_one :basic_parameter
  has_one :technical_parameter
  has_many :automotive_parts
end
