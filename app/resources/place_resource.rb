class PlaceResource <JSONAPI::Resource
	attributes :name, :description, :age, :address, :user_id, :puntatore, :longitude, :latitude
	has_one :user
	filter :user
end
