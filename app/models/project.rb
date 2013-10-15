class Project < ActiveRecord::Base
	has_many :pods

	validates :name, presence: true
end
