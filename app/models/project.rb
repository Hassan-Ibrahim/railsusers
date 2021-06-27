class Project < ApplicationRecord

	belongs_to :user
	has_many :bugs

	def self.user_associate_projects(user)
		if user.Manager?
			Project.all
		else
			Project.where(project_assignee: user.email)
		end
	end
end
