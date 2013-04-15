class UsersController < ApplicationController
	before_filter :authenticate_user!
	
	devise_for :users  
	
	def new
	  #query the new 
	end
end
