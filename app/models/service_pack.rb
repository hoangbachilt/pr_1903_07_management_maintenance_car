class ServicePack < ApplicationRecord
  has_many :automotive_part_details, dependent: :destroy
  accepts_nested_attributes_for :automotive_part_details, reject_if: :all_blank, allow_destroy: true
  has_many :service_registers, dependent: :destroy
  has_one_attached :logo_service_pack
  belongs_to :parent, class_name: "ServicePack", optional: true
  has_many :service_pack_picked, class_name: "ServicePack", foreign_key: :parent_id, dependent: :destroy

  scope :filter_by_title, -> (title) {where title: title}
  scope :services_show, -> (status) {where status: status}
end
