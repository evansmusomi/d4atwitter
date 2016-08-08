class UsersController < ApplicationController
  # Shows user profile
  def show
  	@user = User.find_by(id: params[:id])
  end
end
