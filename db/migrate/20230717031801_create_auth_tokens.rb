class CreateAuthTokens < ActiveRecord::Migration[7.0]
  def change
    create_table :auth_tokens do |t|
      t.belongs_to :admin, null: false, foreign_key: true
      t.datetime :expired_at
      t.text :token

      t.timestamps
    end
  end
end
