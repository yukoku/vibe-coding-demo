class AnswersController < ApplicationController
  def create
    choice = Choice.find(params[:choice_id])
    question = choice.question

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(
          "question_#{question.id}",
          partial: "questions/result",
          locals: { question: question, selected_choice: choice }
        )
      end
    end
  end
end