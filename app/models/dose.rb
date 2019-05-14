class Dose < ApplicationRecord
  # A dose must have a description, a cocktail and an ingredient,
  # and [cocktail, ingredient] pairings should be unique.
  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id,. presence: true
  # A dose belongs to an ingredient. A dose belongs to a cocktail
  belongs_to :ingredient :cocktail

end
