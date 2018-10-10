class AdminController < ApplicationController
	def index
		@emails = Email.all
	end
end
