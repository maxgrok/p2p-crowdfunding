class Pledge < ApplicationRecord
	belongs_to :donor, :class_name => "User"
	belongs_to :project
end
