class ServicePack < ApplicationRecord
  has_many :automotive_parts
  has_many :service_registers
  has_one_attached :logo_service_pack

  scope :filter_by_title, -> (title) {where title: title}
end
