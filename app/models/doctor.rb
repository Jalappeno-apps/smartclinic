class Doctor < ApplicationRecord
  has_many :specializations
  has_one_attached :profile_picture

  validates :name, presence: true
end
