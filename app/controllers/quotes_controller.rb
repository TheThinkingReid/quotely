class QuotesController < ApplicationController
	def index
		@quotes = Quote.limit(10).order("RAND()")
	end
	def random
		@c = Quote.count
		@quotey = Quote.limit(1).order("RAND()")

	end

	def show
		@quotas = Quote.find(params[:id])
	end

	def findbytopic
		  if params[:query].present?
      @quotetopic = Quote.search(params[:query])
    else
      @quotetopic = []
    end
	end

end