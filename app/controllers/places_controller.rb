class PlacesController < JSONAPI::ResourceController
	def check
		lat=params[:latitude]
		lng=params[:longitude]
		if (Place.exists?(name: params[:name]) or Place.exists?(latitude: lat,longitude: lng))
			render plain: "no"
		else
			render plain: "yes"
		end
	end
end