class AddOrganizationToStatic < ActiveRecord::Migration[5.1]
  def change
    add_column :statics, :organization, :string
  end
end
