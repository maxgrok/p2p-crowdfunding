class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :category_id
      t.float :funding_goal
      t.string :startdate
      t.string :enddate
      t.integer :beneficiary_id
      t.timestamps
    end
  end
end
