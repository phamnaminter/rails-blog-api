class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :email
      t.integer :likes_count
      t.integer :rating, default: 3

      t.timestamps
    end
  end
end
