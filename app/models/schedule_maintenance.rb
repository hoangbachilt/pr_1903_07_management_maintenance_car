class ScheduleMaintenance < ApplicationRecord
  belongs_to :staff
  belongs_to :user
  has_one :service_register
end
