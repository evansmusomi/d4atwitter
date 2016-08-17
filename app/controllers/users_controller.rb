class UsersController < ApplicationController
  # Shows user profile
  def show
  	@user = User.find_by(id: params[:id])
  end

  # Shows list of users
  def index
  	@users = User.all
  end
end
