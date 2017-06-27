class BoardController < ApplicationController
  def index
   @posts = Post.all
  end

  def write
  end

  def create
    new_post = Post.new
    new_post.title = params[:input_title]
    new_post.content = params[:input_content]
    new_post.save
    
    redirect_to "/index"
  end

  def edit
    @one_post = Post.find(params[:id])
  end

  def update
    @one_post = Post.find(params[:id])
    @one_post.title = params[:input_title]
    @one_post.content = params[:input_content]
    @one_post.save
    
    redirect_to "/index"  
  end

  def destroy
    @one_post = Post.find(params[:id])
    @one_post.destroy
    redirect_to "/index"
  end
  
  def comment_write
    w_comment = Comment.new
    w_comment.content = params[:content]
    w_comment.post_id = params[:post_id]
    w_comment.save
    
    redirect_to "/index"
  end
  
end
