class CommentsController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new
  end

  def create
    @question = Question.find(params[:question_id])
    if @comment = @question.comments.create(comment_params)
      redirect_to :back
    end
  end

private
  def comment_params
    params.require(:comment).permit(:username, :content)
  end
end
