class CreateDryRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :dry_rooms do |t|
      t.string :room_number

      t.timestamps
    end
  end
end
