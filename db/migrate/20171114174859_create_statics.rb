class CreateStatics < ActiveRecord::Migration[5.1]
  def change
    create_table :statics do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :enquiry
      t.text :description

      t.timestamps
    end
  end
end
