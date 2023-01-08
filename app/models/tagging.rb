class Tagging < ApplicationRecord
  belongs_to :publication
  belongs_to :label
end
