class Customer < ApplicationRecord
	has_many :events
	belongs_to :contacts
end
