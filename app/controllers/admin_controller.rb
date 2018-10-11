class AdminController < ApplicationController
	def index
		@emails = Email.all
		@listemails = @emails.uniq 

		@copy = Array.new

		@emails.each do |email|
		 	@copy.push( email.email )
		end
		

		@singlecopy = @copy.uniq.reject(&:blank?).sort().join( + ', ')
	
		
	end
end
