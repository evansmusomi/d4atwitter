class UsersController < ApplicationController
  # Shows user profile based on username and initialise tweet object
  def show
  	@user = User.find_by(user_name: params[:user_name])
  	@tweet = Tweet.new
  end

  # Shows list of all users
  def index
  	@users = User.all
  end
end
