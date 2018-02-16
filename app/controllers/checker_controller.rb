class CheckerController < ApplicationController
	def check
		#lat=params[:latitude]
		#lng=params[:longitude]
		my_name=params[:name]
		if Places.exists?(name: my_name)
			render json: ok
		else
			render json: no
		end
	end
end
