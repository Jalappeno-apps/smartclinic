class Doctor < ApplicationRecord
  has_many :specializations, dependent: :destroy
  has_one_attached :profile_picture

  validates :name, presence: true

  enum color: %i[orange red yellow]
end
