class UsersController < ApplicationController
  
	def create
	  @user = User.new(params[:user])
	  if @user.save
	    redirect_to @user, notice: "Signed up successfully."
	  else
	    render :new
	  end
	end

	### This is the correct method you override with the code above
	### def self.find_for_database_authentication(warden_conditions)
	### end 

  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login
end
