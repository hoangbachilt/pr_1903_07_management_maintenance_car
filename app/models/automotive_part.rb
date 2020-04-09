class AutomotivePart < ApplicationRecord
  belongs_to :service_pack
  belongs_to :car
end
