class HomeController < ApplicationController

	def index
		@homepage = true
		    @contact = Contact.new

	end

end
