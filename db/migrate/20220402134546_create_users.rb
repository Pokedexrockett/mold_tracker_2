class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :admin
      t.string :email
      t.string :password_digest
      t.string :uid

      t.timestamps
    end
  end
end
