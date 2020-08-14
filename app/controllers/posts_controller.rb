class PostsController < ApplicationController

  after_action :allow_iframe, only: [:show]
  before_action :require_user_logged_in, only: [:new]

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
    @t_content = TContent.find_by(id: params[:t_content_id])
    if @t_content
     @post.t_content_id = @t_content.id
    end
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
    @post = Post.find(params[:id])
    @post.destroy
    flash[:success] = "正常に削除されました"
    redirect_to root_path
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
