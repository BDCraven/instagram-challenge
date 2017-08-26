class PostsController < ApplicationController
  def index
    @posts = Post.all.reverse
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:post).permit(:title)
  end
end
