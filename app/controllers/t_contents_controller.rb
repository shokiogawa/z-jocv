class TContentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @t_content = current_user.t_contents.build
  end

  def create
    @topic = Topic.find(params[:id])
    @t_content = current_user.t_contents.build(params_t_content)
    @t_content.user_id = @topic.id
    if @t_content.save
      flash[:success] = "コンテンツを作成しました"
      redirect_to topic_path(@t_content.topic)
    else 
      flash.now[:danger] = "コンテンツの作成に失敗しました"
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

  def params_t_content
    params.require(:t_content).permit(:title, s_content_attributes: [:id, :image, :stitle, :content, :_destroy])
  end
end
