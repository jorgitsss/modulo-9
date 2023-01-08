class CreateJoinTablePublicationLabel < ActiveRecord::Migration[7.0]
  def change
    create_join_table :publications, :labels do |t|
      # t.index [:publication_id, :label_id]
      # t.index [:label_id, :publication_id]
    end
  end
end
