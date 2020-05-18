class ScheduleMaintenance < ApplicationRecord
  belongs_to :staff
  belongs_to :user
  has_one :service_register
  validates :car_name, presence: true
  validates :number_phone, presence: true
  validates :date, presence: true
end
