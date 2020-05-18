class AutomotivePartDetail < ApplicationRecord
  belongs_to :service_pack
  belongs_to :automotive_part
end
