class Event < ApplicationRecord
	belongs_to :customer
	belongs_to :contact
end
