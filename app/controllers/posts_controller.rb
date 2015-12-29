class PostsController < ApplicationController

  before_action :authenticate_user!

  def index
    @posts = current_user.posts || []
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post saved successfully."  
      redirect_to posts_path
    else
      flash[:error] = "Some thing went wrong."
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:category_id, :title, :content, :tags[])
  end

end
