class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :image
      t.string :user_id
      t.string :strain_id

      t.timestamps
    end
  end
end
