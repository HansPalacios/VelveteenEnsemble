class Song < ApplicationRecord
	def index
		@songs = Song.all

	end 
end
