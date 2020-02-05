class Establishment < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  scope :search, -> (query) { where("name like ?", "%#{query}%") }
end
