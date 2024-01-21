class Employee < ApplicationRecord
	belongs_to :department
	belongs_to :user
	has_many :employees_tickets
	has_many :tickets, through: :employees_tickets
	has_many :tickets
end
