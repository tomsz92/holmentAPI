class NearLocationsController < ApplicationController
def find
	lat=params[:latitude]
	lng=params[:longitude]
	sql = "select * from (
SELECT  *,( 3959 * acos( cos( radians("+lng+") ) * cos( radians( latitude ) ) * cos( radians( longitude ) - radians("+lat+") ) + sin( radians("+lng+") ) * sin( radians( latitude ) ) ) ) AS distance 
FROM places
) al
ORDER BY distance
LIMIT 10;"
	records_array = ActiveRecord::Base.connection.execute(sql)
	render json: records_array
end
def retrieve
	user_id=params[:user_id]
	sql = "select * from places where user_id="+user_id
	records_array = ActiveRecord::Base.connection.execute(sql)
	render json: records_array
end
end