class PostsController < ApplicationController

  def index
    @posts = Post.all.limit(100).order('RANDOM()').includes(comments: :user)
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create!(resource_params)
    redirect_to @post
  end

  protected
  def resource_params
    params.require(:post).permit(:title, :description)
  end
end
