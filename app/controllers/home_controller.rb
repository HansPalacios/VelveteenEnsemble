class HomeController < ApplicationController

	def index
		@homepage = true
		@contact = Contact.new
		@email = Email.new
		# @popular = Instagram.media_popular
	end
	def BookingVE
		@landing = true
		@contact = Contact.new
		@email = Email.new
	end
end
