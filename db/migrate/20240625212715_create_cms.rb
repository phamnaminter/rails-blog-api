class CreateCms < ActiveRecord::Migration[7.0]
  def change
    create_table :cms do |t|
      t.integer :core_id

      t.timestamps
    end
  end
end
