class Establishment < ApplicationRecord
  validates :name, presence: true
  scope :search, -> (query) { where("name like ? or neighborhood like ? or establishment_type like ? or food like ?", "%#{query.titleize}%", "%#{query.titleize}%", "%#{query.titleize}%", "%#{query.titleize}%") }
end
