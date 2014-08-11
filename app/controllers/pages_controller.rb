class PagesController < ApplicationController

	def itinerary
	end

	def comments
		@stops = Stop.all
	end
end
