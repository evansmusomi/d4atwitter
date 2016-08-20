class TweetsController < ApplicationController
  # Finds the user before starting the create action
  before_action :set_user, only:[:create]

  # Shows a tweet
  def show
  	@tweet = Tweet.find_by(id: params[:id])
  end

  # Creates new tweet and redirects to user's profile
  def create
    @tweet = @user.tweets.new(tweet_params)
    if !@tweet.save
      flash['alert-danger'] = @tweet.errors.full_messages.to_sentence
    end
    redirect_to twitter_url(@user.user_name)
  end

  private
  	# Sets permitted attribute for a new tweet
  	def tweet_params
      params.require(:tweet).permit(:status)
  	end

    # Sets relevant user
    def set_user
      @user = User.find_by(user_name: params[:user_name])
    end
end
