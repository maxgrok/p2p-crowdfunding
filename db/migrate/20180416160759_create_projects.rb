class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.category_id :category
      t.float :funding_goal
      t.string :startdate
      t.string :enddate

      t.timestamps
    end
  end
end
