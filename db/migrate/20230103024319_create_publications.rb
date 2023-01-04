class CreatePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :publications do |t|
      t.string :title
      t.text :description
      t.references :label, null: false, foreign_key: true
      t.string :author
      t.string :status

      t.timestamps
    end
  end
end
