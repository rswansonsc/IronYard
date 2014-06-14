class PostsController < ApplicationController

  def index
    @posts = Post.all

    respond_to do |format|
      format.json { render json: @posts.as_json }
    end
  end

  def create
    @post = Post.create post_params
    respond_to do |format|
      format.json { render json: @post.as_json }
    end
  end

  def update
    @post = Post.find params[:id]
    @post.update_attributes post_params
    respond_to do |format|
      format.json { render json: @post.as_json }
    end
  end

  def destroy
    @post = Post.find params[:id]
    @post.delete
    respond_to do |format|
      format.json { render json: @post.as_json }
    end
  end

private
  def post_params
    params.require(:post).permit(:title, :content, :description)
  end
end
