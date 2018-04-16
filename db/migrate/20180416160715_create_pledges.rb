class CreatePledges < ActiveRecord::Migration[5.2]
  def change
    create_table :pledges do |t|
      t.float :amount

      t.timestamps
    end
  end
end
