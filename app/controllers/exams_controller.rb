class ExamsController < ApplicationController
  def index
  end

  def show
    @exam = Exam.find(params[:id])
    @answer = Answer.new
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @exam = @topic.exams.build
    
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @exam = @topic.exams.build(params_exam)
    @exam.user_id = current_user.id
    if @exam.save
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
    @exam = Exam.find(params[:id])
    @exam.destroy 
    flash[:success] = "正常に削除しました"
    redirect_back(fallback_location: root_path)
  end

  private
  def params_exam
    params.require(:exam).permit(:title, sexams_attributes: [:id, :image, :stitle, :content, :_destroy])
  end
end
