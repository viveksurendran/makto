class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :jobtitle
      t.string :jobrole
      t.text :jobresponsibility

      t.timestamps
    end
  end
end
