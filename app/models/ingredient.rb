class Ingredient < ApplicationRecord
  # An ingredient must have a unique name.
  validates :name, uniqueness: true, presence: true
  # An ingredient has many doses
  has_many :doses
end
