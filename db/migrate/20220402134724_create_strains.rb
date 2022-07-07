class CreateStrains < ActiveRecord::Migration[7.0]
  def change
    create_table :strains do |t|
      t.string :name
      t.string :batch_number
      t.string :metric_tag
      t.integer :user_id
      t.integer :dry_room_id

      t.timestamps
    end
  end
end
