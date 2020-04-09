class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :member_card
  has_many :service_registers
  has_many :register_advisories
  has_many :schedule_maintenances
  has_many :feedbacks
  has_one_attached :avatar
end
