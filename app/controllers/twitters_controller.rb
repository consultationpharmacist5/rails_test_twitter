class TwittersController < ApplicationController
  def index
  end

  def new
    @twitter = Twitter.new
  end
end
