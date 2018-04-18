class HomeController < ApplicationController
	def index
		@users = User.all 
		@projects = Project.all 
		@pledges = Pledge.all
		@categories = Category.all
	end
	def about
	end

	def login
		@user = User.new
	end

	def admin
		@users = User.all
		@highest_pledge = Pledge.highest_pledge
		@donor = Pledge.most_generous_donor
		@luckiest = Pledge.luckiest_beneficiary
		@projects = Project.all 
		@pledges = Pledge.all
		@categories = Category.all
		@most_popular_project = Pledge.most_popular_project
		@total_pledge_amount = Pledge.total_pledges
	end


	def self.donors
		@donor_ids = Pledge.select do |pledge|
			pledge.donor_id
		end
		@donors = @donor_ids.select do |id|
			User.find(id)
		end
	end
end