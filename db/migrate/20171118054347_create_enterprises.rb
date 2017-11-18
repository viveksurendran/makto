class CreateEnterprises < ActiveRecord::Migration[5.1]
  def change
    create_table :enterprises do |t|
      t.string :organization
      t.string :firstname
      t.string :lastname
      t.integer :totalemployee
      t.string :industry
      t.string :email
      t.integer :phone
      t.integer :countrycode

      t.timestamps
    end
  end
end
