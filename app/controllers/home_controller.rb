class HomeController < ApplicationController

	def index
		@homepage = true
		@contact = Contact.new
		@email = Email.new
	end

end
