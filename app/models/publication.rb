class Publication < ApplicationRecord
  # Validations
  validates :title, presence: true
  validates :description, presence: true
  validates :author, presence: true
  validates :status, presence: true, inclusion: { in: %w[active inactive discontinued] }

  # Associations
  belongs_to :label

  # Enums
  ## Status
  enum status: {
    active: 'activo',
    inactive: 'inactivo',
    discontinued: 'suspendido'
  }, _default: 'activo'
end

# create_table "products", force: :cascade do |t|
#   t.string "name"
#   t.text "description"
#   t.integer "brand_id", null: false
#   t.string "status"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["brand_id"], name: "index_products_on_brand_id"
# end

# create_table "publications", force: :cascade do |t|
#   t.string "title"
#   t.text "description"
#   t.integer "label_id", null: false
#   t.string "author"
#   t.string "status"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["label_id"], name: "index_publications_on_label_id"
# end
