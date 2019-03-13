class AdminController < ApplicationController
	def index
		
		# @emails = Email.all
		@contacts = Contact.all
		@events = Event.all
		@customers = Customer.all 
		# @listemails = Array.new
		@copy = Array.new

		@contacts.each do |contact|
		 	@copy.push( contact.email )
		 	# @copy.push( 'hans@hspalacios.com' )
		end
		# @contacts.each do |contact|
		#  	@listemails.push( contact.email, contact.fname )
		#  	# @copy.push( 'hans@hspalacios.com' )
		# end
		
		@singlelist = @copy.uniq.reject(&:blank?).sort()
	
		@singlecopy = @copy.uniq.reject(&:blank?).sort().join( + ', ')
	
		
	end
	def bookingVE
		
	end
end
