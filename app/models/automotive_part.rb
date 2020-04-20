class AutomotivePart < ApplicationRecord
  belongs_to :service_pack, optional: true
  belongs_to :car
  has_one_attached :logo_automotive_part

  scope :filter_by_title, -> (title) {where title: title}
end
