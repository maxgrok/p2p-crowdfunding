class Project < ApplicationRecord
	belongs_to :category
	belongs_to :beneficiary, :class_name =>"User"
end
