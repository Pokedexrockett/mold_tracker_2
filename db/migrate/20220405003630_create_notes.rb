class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :employee
      t.integer :mold_weight
      t.string :description
      t.string :mold_photos
      t.integer :user_id
      t.integer :strain_id

      t.timestamps
    end
  end
end
