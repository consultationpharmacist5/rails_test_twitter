class TwittersController < ApplicationController
  def index
  end

  def new
    @twitter = Twitter.new
  end

  def create
    Twitter.create(title: params[:blog][:title], content: params[:blog][:content])
  end
end
