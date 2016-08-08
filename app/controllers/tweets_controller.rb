class TweetsController < ApplicationController
  # Lists tweets
  def index
  	@user = User.find_by(params[:user_id])
  	@tweets = Tweet.where(user_id: params[:user_id])
  end

  # Shows a tweet
  def show
  	@tweet = Tweet.find_by(id: params[:id])
  end

  # Shows compose tweet form
  def new
  end

  # Creates new tweet
  def create
  end

  private
  	# Protects our data from the scary internet
  	def tweet_params
  		params.permit(:status)
  	end
end
