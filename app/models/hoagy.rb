class Hoagy < ApplicationRecord
  belongs_to :bread
  has_many :ingredient
  has_many :condiment
end
