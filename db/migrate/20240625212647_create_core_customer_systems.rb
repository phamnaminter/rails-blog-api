class CreateCoreCustomerSystems < ActiveRecord::Migration[7.0]
  def change
    create_table :core_customer_systems do |t|
      t.text :base64, limit: 0.3.gigabytes

      t.timestamps
    end
  end
end
