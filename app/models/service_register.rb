class ServiceRegister < ApplicationRecord
  belongs_to :user
  belongs_to :service_pack
  belongs_to :schedule_maintenance, optional: true
end
