class AddingDonorIdAndProjectIdToPledges < ActiveRecord::Migration[5.2]
  def change
  	add_column :pledges, :donor_id, :integer
  	add_column :pledges, :project_id, :integer
  end
end
