class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: :desc)
  end
  def show
    @id = params[:id]
    @post = Post.find_by(id: params[:id])
  end
end
