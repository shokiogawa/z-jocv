class SContentsController < ApplicationController
  def edit
    @s_content = SContent.find(params[:id])
  end

  def update
    @s_content = SContent.find(params[:id])
    if @s_content.update(params_s_content)
      flash[:success] = "編集に成功しました"
      redirect_to t_content_path(@s_content.t_content)
    else
      flash.now[:danger] = "編集できませんでした"
      render :edit
    end
  end

  def destroy
  end

  private
  def params_s_content
    params.require(:s_content).permit(:image, :stitle, :content)
  end
end
