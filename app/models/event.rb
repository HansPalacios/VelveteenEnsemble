class Event < ApplicationRecord
	# has_many :customers
	has_many :contacts
	# accepts_nested_attributes_for :customers
	accepts_nested_attributes_for :contacts
end
