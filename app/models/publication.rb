class Publication < ApplicationRecord
  # validaciones
  validates :name, presence: true
  validates :description, presence: true
  # validates :author, presence: true
  validates :available, presence: true
  # validates :available, inclusion: { in: [true, false] }
  validates :label_ids, presence: true

  # Associations
  has_and_belongs_to_many :labels

  # # belongs_to :label
  # has_many :label
  # Enums
  ## Status
  # enum status: { active: true, inactive: false }
end