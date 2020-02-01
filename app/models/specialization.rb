class Specialization < ApplicationRecord
  belongs_to :doctor

  enum name: %w[sexual physical mental]
end
