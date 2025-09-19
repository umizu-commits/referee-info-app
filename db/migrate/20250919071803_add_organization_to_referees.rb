class AddOrganizationToReferees < ActiveRecord::Migration[7.1]
  def change
    add_column :referees, :organization, :string
  end
end
