class Staff < ApplicationRecord
  has_many :schedule_maintenances
  has_many :register_advisories
end
