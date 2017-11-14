class ChangeIntegerLimitInStatics < ActiveRecord::Migration[5.1]
  def change
  	 change_column :statics, :phone, :integer, limit: 8
  end
end
