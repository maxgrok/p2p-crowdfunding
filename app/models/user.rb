class User < ApplicationRecord
	has_many :projects
	has_many :pledges, :foreign_key => "donor_id" 
	has_many :projects, :foreign_key => "beneficiary_id"
end
