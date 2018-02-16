class ProvaController < ApplicationController
def find
	render plain: params
end
end