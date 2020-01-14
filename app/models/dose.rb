class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :description, presence: true, allow_blank: false
  belongs_to :ingredient
  belongs_to :cocktail
  validates :cocktail, uniqueness: { scope: :ingredient }
end
