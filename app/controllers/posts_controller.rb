class PostsController < ApplicationController
  def index
    @post = Post.all.order("created_at DESC")
  end
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post= Post.new(article_params)
    @post.user =  User.find_by(id: session[:user_id]) if session[:user_id]
    
    if @post.save!
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(article_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post =Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
    def article_params
      params.require(:post).permit(:author, :description)
    end
end
