class PostsController < ApplicationController
  def new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :content))

    @post.save
    redirect_to @post
  end
end
