class Establishment < ApplicationRecord
  validates :name, presence: true
  scope :search, -> (query) { where("name like ?", "%#{query}%") }
end
