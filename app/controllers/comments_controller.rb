class CommentsController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new
  end

  def index
    @question = Question.find(params[:question_id])
    @comments = @question.comments.page.per(10)
  end

  def create
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new(comment_params)
    if @comment.save
      redirect_to :back
    else
      flash[:alert] = "Please fill in the username and content inputs."
      redirect_to :back
    end
  end

private
  def comment_params
    params.require(:comment).permit(:username, :content)
  end
end
