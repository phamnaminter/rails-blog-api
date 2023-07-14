class CreateAppInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :app_informations do |t|
      t.string :fullname
      t.string :position
      t.integer :years_of_experience
      t.integer :earning
      t.integer :number_of_projects
      t.text :general_information
      t.text :education
      t.string :languages
      t.string :organization
      t.string :department
      t.date :birthday

      t.timestamps
    end
  end
end
