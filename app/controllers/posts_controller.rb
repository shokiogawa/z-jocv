class PostsController < ApplicationController

  after_action :allow_iframe, only: [:show]

  def index
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
  end

  def new
    @post = current_user.posts.build
    #@post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    #@post = Post.new(post_params)
    url = params[:post][:url]
    url = url.last(11)
    @post.url = url
    if @post.save
      flash[:success] = "投稿出来ました"
      redirect_to root_path
    else
      flash.now[:danger] = "投稿できませんでした"
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :ex, :kind_ids => [], contents_attributes: [:id, :c, :title, :_destroy])
  end
  
  def allow_iframe
    url = "https://www.youtube.com"
    response.headers['X-Frame-Options'] = "ALLOW-FROM #{url}"
    response.headers['Content-Security-Policy'] = "frame-ancestors #{url}"
  end




end
