class RegisterAdvisory < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :staff

  validates :username, presence: true, length: { maximum: 50 }
  validates :number_phone, presence: true, length: { is: 10 }
end
