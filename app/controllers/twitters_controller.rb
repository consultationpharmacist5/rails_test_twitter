class TwittersController < ApplicationController
  before_action :set_twitter, only: [:show, :edit, :update]

  def index
    @twitters = Twitter.all
  end

  def new
    @twitter = Twitter.new
  end

  def create
    @twitter = Twitter.new(twitter_params)
    if @twitter.save
    redirect_to twitters_path, notice: "つぶやきを投稿しました！"
    else
    render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update

    if @twitter.update(twitter_params)
      redirect_to twitters_path, notice:"つぶやきを編集しました！"
    else
      render 'edit'
    end
  end

  private

  def twitter_params
    params.require(:twitter).permit(:title, :content)
  end

  def set_twitter
    @twitter = Twitter.find(params[:id])
  end
end
