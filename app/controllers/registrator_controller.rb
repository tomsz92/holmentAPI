class RegistratorController < ApplicationController
	def register
		if (User.exists?(email: params[:email]))
			render plain: "{\"success\":\"false\"}"
		else
			@user=User.new(name: params[:name],email: params[:email],password: params[:password])
			@user.save
			render plain: "{\"success\":\"true\"}"
		end
	end
	
	def login
		if (User.exists?(email: params[:email],password: params[:password]))
			user=User.find_by(email: params[:email],password: params[:password])
			render plain: "{\"success\":\"true\",\"id\":\""+user.id.to_s+"\",\"name\":\""+user.name+"\",\"email\":\""+user.email+"\"}"
		else
			render plain: "{\"success\":\"false\"}"
		end
	end
end
