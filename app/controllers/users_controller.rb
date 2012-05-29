class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    redirect_to messages_path
  end
end
