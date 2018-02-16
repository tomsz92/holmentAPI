Rails.application.routes.draw do
  jsonapi_resources :users
  jsonapi_resources :places
  get 'locations' => "near_locations#find"
  get 'prova' => "prova#find"
  get 'check' => "places#check"
  get 'user_locations' => "near_locations#retrieve"
  get 'registration' => "registrator#register"
  get 'login' => "registrator#login"
end
