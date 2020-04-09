class RegisterAdvisory < ApplicationRecord
  belongs_to :user
  belongs_to :staff
end
