class AutomotivePart < ApplicationRecord
  has_many :automotive_part_details, dependent: :destroy
  belongs_to :car
  has_one_attached :logo_automotive_part

  scope :filter_by_title, -> (title) {where title: title}
end
