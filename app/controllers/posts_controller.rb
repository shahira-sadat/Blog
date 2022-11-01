class PostsController < ApplicationController
  def index
    @author = Author.find(params[:author_id])
    @posts = @author.posts.includes(:comments)
  end

  def show
    @post = Post.find(params[:id])
    @author = @post.author
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_user
    if @post.save
      redirect_to author_path(current_user.id)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
