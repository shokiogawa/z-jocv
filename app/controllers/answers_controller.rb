class AnswersController < ApplicationController
  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(params_answer)
    @exam = Exam.find(params[:exam_id])
    @answer.exam_id = @exam.id
    if @answer.save
      flash[:success] = "答案を作成しました"
      redirect_back(fallback_location: root_path)
    else
      flash.now[:danger] = "作成できませんでした"
      render :new
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    flash[:success] = "答案を削除しました"
    redirect_to root_path
  end

  private
  def params_answer
    params.require(:answer).permit(:a)
  end
end
