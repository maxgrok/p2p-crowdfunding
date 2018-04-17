class User < ApplicationRecord
	validates :name, presence: true
	validates :age, presence: true
	
	has_many :projects
	has_many :pledges, :foreign_key => "donor_id" 
	has_many :projects, :foreign_key => "beneficiary_id"
end
