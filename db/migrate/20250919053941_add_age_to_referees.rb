class AddAgeToReferees < ActiveRecord::Migration[7.1]
  def change
    add_column :referees, :age, :integer
  end
end
