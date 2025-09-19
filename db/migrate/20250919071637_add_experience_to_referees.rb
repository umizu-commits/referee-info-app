class AddExperienceToReferees < ActiveRecord::Migration[7.1]
  def change
    add_column :referees, :experience, :integer
  end
end
