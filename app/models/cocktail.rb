class Cocktail < ApplicationRecord
  ## has_many :ingredients
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true

  has_many :reviews

end
