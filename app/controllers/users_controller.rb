class UsersController < ApplicationController
  def home
  end

  def new
    @user = User.new 
  end

  def create
    puts "temoin depuis /create"
    puts params.inspect
    puts params[:authenticity_token]
    @user = User.create(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio] )
    
    if @user.save
      redirect_to "/"
    else
      render '/users/error'
    end
    
    
  end
end
