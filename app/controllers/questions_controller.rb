class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    respond_to do |format|
      format.html {redirect_to :back}
      format.js
    end
  end


private
  def question_params
    params.require(:question).permit(:option1, :option2, :option1_votes, :option2_votes)
  end
end
