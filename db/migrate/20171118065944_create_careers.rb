class CreateCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :careers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :phone, limit: 8
      t.string :resume
      t.integer :countrycode

      t.timestamps
    end
  end
end
