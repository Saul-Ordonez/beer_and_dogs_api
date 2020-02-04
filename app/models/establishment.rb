class Establishment < ApplicationRecord
  validates :name, presence: true
  scope :search, -> (query) { where("name like ?", "%#{query}%") }
  scope :search, -> (query) { where("name like? or address like? or food like? or restrictions like? or kid_friendly = ? or neighborhood like?", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", true, "%#{query}%" ) }
  scope :search_by_name, -> (name) { where("name like ?", "%#{name}%") }
  scope :search_by_food, -> (food) { where("food like ?", "%#{food}%") }
  scope :search_by_kid, -> (kid_friendly) { where kid_friendly: kid_friendly }
  scope :search_by_type, -> (establishment_type) { where("establishment_type like ?", "%#{establishment_type}%") }
end
