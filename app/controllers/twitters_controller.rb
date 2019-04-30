class TwittersController < ApplicationController
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
    @twitter = Twitter.find(params[:id])
  end

  def edit
    @twitter = Twitter.find(params[:id])
  end

  def update
    @twitter = Twitter.find(params[:id])
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
end
