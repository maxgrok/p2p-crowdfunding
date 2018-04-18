class Pledge < ApplicationRecord
	validates :amount, presence: true

	belongs_to :donor, :class_name => "User"
	belongs_to :project

	def self.highest_pledge
		@highest_pledge = Pledge.all.sort_by {|pledge| pledge.amount }.reverse.first
	end

	def self.most_generous_donor
		@donor_id = self.highest_pledge.donor_id
		@donor = User.find(@donor_id)
	end

	def self.luckiest_beneficiary
		@luckiest_project_id = Pledge.highest_pledge.project_id
		@luckiest_project = Project.find(@luckiest_project_id)
		@luckiest = User.find(@luckiest_project.beneficiary_id)
	end

	def self.most_popular_project
		@most_popular_project = Pledge.all.sort_by {|pledge| pledge.project_id }.reverse
	end

	def self.total_pledges
		@total_pledge_amount = Pledge.all.each do |pledge|
			pledge.amount
		end
		@total_pledge_amount.flatten(0)
	end
end
