class Blog < ApplicationRecord
  validates :name, uniqueness: true  
end