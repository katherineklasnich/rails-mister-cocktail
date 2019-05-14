class Cocktail < ApplicationRecord
  # A cocktail must have a unique name.
  validates :name, uniqueness: true, presence: true
  # A cocktail has many doses
  has_many :doses
  # A cocktail has many ingredients through doses
  has_many :ingredients, through: :doses

end
