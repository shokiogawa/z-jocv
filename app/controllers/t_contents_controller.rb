class TContentsController < ApplicationController
  def index
  end

  def show
    
    @t_content = TContent.find(params[:id])
  end

  def new
    
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @t_content = @topic.t_contents.build(params_t_content)
    @t_content.user_id = current_user.id
    if @t_content.save
      flash[:success] = "コンテンツを作成しました"
      redirect_to textbook_path(@topic.textbook)
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
    params.require(:t_content).permit(:title, s_contents_attributes: [:id, :image, :stitle, :content, :_destroy])
  end
end
