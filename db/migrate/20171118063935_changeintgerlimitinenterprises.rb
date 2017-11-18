class Changeintgerlimitinenterprises < ActiveRecord::Migration[5.1]
  def change
  	change_column :enterprises, :phone, :integer, limit: 8
  end
end
