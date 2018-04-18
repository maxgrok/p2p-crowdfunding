class Project < ApplicationRecord
	validates :title, presence: true
	validates :funding_goal, presence: true
	validates :category_id, presence: true
	validates :startdate, presence: true
	validates :enddate, presence: true
	validates :beneficiary_id, presence: true
	
	belongs_to :category
	belongs_to :beneficiary, :class_name =>"User"

	def self.total_pledges
		@total_pledge_amount = Pledge.all.select do |pledge|
			pledge.project_id = self.id 
		end
		@total_pledge_amount.each do |pledge|
			@total_pledges_amounts << pledge.amount 
		end
		@total_pledges_amounts.flatten(0).sum
	end
end
