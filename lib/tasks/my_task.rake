namespace :my_task do
  task :my_task1 => :development do
  	ActiveRecord::Base.connection.tables.each do |t|
		ActiveRecord::Base.connection.reset_pk_sequence!(t)
	end
  end
end
