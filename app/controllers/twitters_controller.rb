class TwittersController < ApplicationController
  def index
  end

  def new
    @twitter = Twitter.new
  end

  def create
    Twitter.create(twitter_params)
    redirect_to new_twitter_path
  end


  private

  def twitter_params
    params.require(:twitter).permit(:title, :content)
  end
end
