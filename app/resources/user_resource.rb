class UserResource <JSONAPI::Resource
	attributes :numeroesterno, :tipoesterno, :name, :email, :password
	has_many :places
end
