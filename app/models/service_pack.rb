class ServicePack < ApplicationRecord
  has_many :automotive_parts
  has_many :service_registers
end
