class Dose < ApplicationRecord
  # A dose belongs to an ingredient and a cocktail
  belongs_to :ingredient
  belongs_to :cocktail
  # A dose must have a description
  # and [cocktail, ingredient] pairings should be unique.
  validates :description, presence: true
  # A dose must have a cocktail
   # A dose must have an ingredient
  validates :cocktail, presence: true, uniqueness: {scope: :ingredient}
end
