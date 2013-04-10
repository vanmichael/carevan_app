class UsersController < ApplicationController

	def new
	   @user = User.new
	end

	def create
		@user = User.new
		@user = User.new(params[:user])
  		if @user.save
      		sign_in @user 
  			flash[:success] = "Welcome to Van's World of Fun!"
  			redirect_to @user
  		else
  			render 'show'
  		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
    	if @user.update_attributes(params[:user])
        	sign_in @user
        	flash[:success] = "User Profile updated"
        	redirect_to @user
    	else
        	render 'edit'
    	end
	end

	def show
		@user = User.find(params[:id])
	end
end