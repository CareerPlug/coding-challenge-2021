class PostsController < ApplicationController
  def index
    @posts = Post.search(params[:search])
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_path
  end
  
  # to prohibit extra form fields being entered and overwriting of private data, setting explicit params ->
  private
    def post_params
      params.require(:post).permit(:title, :body, :id, :search)
    end
end
