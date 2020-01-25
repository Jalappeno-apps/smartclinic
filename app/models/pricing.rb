class Pricing < ApplicationRecord
  has_many :points, dependent: :destroy

  enum ptype: %w[physical sexual mental lab]
end
