class Label < ApplicationRecord
  # validaciones
  validates :name, presence: true
  validates :description, presence: true
  validates :available, inclusion: { in: [true, false] }

  # Associations
  has_and_belongs_to_many :publications
  # has_many :taggings
  # has_many :publications, through: :taggings
  # has_many :publication
  # belongs_to :publication
end






