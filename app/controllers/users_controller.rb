class UsersController < ApplicationController
  # Shows user profile
  def show
  	@user = User.find_by(user_name: params[:user_name])
  end

  # Shows list of users
  def index
  	@users = User.all
  end
end
