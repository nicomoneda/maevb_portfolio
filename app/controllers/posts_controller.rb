class PostsController < ApplicationController
  before_action :set_post_var, only: [:show, :edit, :update, :destroy]

  def home
  end
  
  def index
    if params[:category]
      @posts = Post.where(category: params[:category])
    else
      @posts = Post.all
    end
  end

  def show
    @contents = @post.contents
  end

  def new
    @post = Post.new
    @post.user = current_user
    @content = Content.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    unless @contents.nil?
      @contents.each do |content|
        content = Content.create
        content.post = @post
      end
    end
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  def destroy
    @post.destroy

    redirect_to posts_path(@posts)
  end

  private

  def set_post_var
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :category, :description, :creation_date, :url_web)
  end

end
