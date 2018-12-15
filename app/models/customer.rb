class Customer < ApplicationRecord
	has_many :events
	has_many :contacts, through: :events
end
