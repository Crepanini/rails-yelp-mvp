class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }

  has_many :reviews, dependent: :destroy
end