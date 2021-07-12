class PostsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    # render plain: params[:post].inspect
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  private
  def post_params
    params.require(:post).permit(:author, :title, :body)
  end
end
