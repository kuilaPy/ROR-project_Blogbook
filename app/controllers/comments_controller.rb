# frozen_string_literal: true

class CommentsController < ApplicationController
  def Index
    @post = Post.find(params[:post_id])
    @comment = @post.comments.all
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.all
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:name, :comment))
    redirect_to posts_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end
