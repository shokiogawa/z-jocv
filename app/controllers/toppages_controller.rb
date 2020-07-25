class ToppagesController < ApplicationController
  def index
    @kind = Kind.find_by(id: params[:kind_id])
    
    
    #  if @kind
    #   @posts = @kind.posts.order(id: :desc).page(params[:page]).per(15)
    #  else
    #   @posts = Post.order(id: :desc).page(params[:page]).per(15)
    #  end
    
    if logged_in?
      @posts1 = current_user.posts.order(id: :desc).page(params[:page]).per(15)
    end
    
    if params[:ex].present?
      @posts = Post.where('ex LIKE ?', "%#{params[:ex]}%").order(id: :desc).page(params[:page]).per(15)
    else
      
      if @kind
       @posts = @kind.posts.order(id: :desc).page(params[:page]).per(15)
      else
       @posts = Post.order(id: :desc).page(params[:page]).per(15)
      end
     
    end
    
  end
  
end
