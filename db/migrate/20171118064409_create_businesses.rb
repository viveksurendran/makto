class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :organization
      t.string :firstname
      t.string :lastname
      t.integer :totalemployee
      t.string :industry
      t.string :email
      t.integer :phone, limit: 8
      t.integer :countrycode

      t.timestamps
    end
  end
end
