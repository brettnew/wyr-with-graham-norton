class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to :back
    end
  end


private
  def question_params
    params.require(:question).permit(:option1, :option2, :option1_votes, :option2_votes)
  end
end
