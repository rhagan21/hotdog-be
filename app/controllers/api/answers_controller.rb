class Api::AnswersController < ApplicationController
  def index
    answers = AnswerTable.all
    render json: answers, status: 200
  end

  def create
    answer = AnswerTable.new(
      entry: ans_params[:entry]
    )
    if answer.save
      render json: answer, status: 200
    else
      render json: {error: "Error creating answer"}
    end
  end

  def show
    answer = AnswerTable.find_by(id: params[:id])
    if answer
      render json: answer, status: 200
    else
      render json: {error: "Answer Not Found"}
    end
  end

  private
    def ans_params
      params.require(:answer).permit([
        :entry
      ])
    end
end
