class TextbooksController < ApplicationController
  def show
    @textbook = Textbook.find(params[:id])
    @topics = @textbook.topics
    @topic = @textbook.topics.build

  end
end
