class AdminController < ApplicationController
	def index
		
		@emails = Email.all
		@contacts = Contact.all
		@listemails = @emails.uniq 

		@copy = Array.new

		@emails.each do |email|
		 	@copy.push( email.email )
		 	@copy.push( 'hans@hspalacios.com' )
		end
		

		@singlecopy = @copy.uniq.reject(&:blank?).sort().join( + ', ')
	
		
	end
end
