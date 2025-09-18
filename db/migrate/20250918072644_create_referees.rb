class CreateReferees < ActiveRecord::Migration[7.1]
  def change
    create_table :referees do |t|
      t.string :name
      t.string :license_level
      t.integer :experience_years

      t.timestamps
    end
  end
end
