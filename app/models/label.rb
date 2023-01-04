class Label < ApplicationRecord
  # belongs_to :publication
  validates :title, presence: true
  validates :description, presence: true
  validates :available, inclusion: { in: [true, false] }

  # Associations
  has_many :publications, dependent: :destroy

end






