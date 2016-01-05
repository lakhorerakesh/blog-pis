class PostsController < ApplicationController

  before_action :authenticate_user!

  def index
    @posts = current_user.posts || []
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:notice] = "Post saved successfully."  
      redirect_to posts_path
    else
      flash[:error] = "Some thing went wrong."
      render :new
    end
  end

  def show
    @post = Post.friendly.find(params[:id])  
  end

  def edit
    @post = Post.friendly.find(params[:id])
  end

  def update
    @post = Post.friendly.find(params[:id])
    if @post && @post.update_attributes(post_params)
      flash[:notice] = "post updated successfully"
      redirect_to posts_path
    else
      flash[:notice] = "Something went wrong :("
    end
  end


  private

  def post_params
    params.require(:post).permit(:category_id, :title, :content, :tags => [])
  end

end
