class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    if @answer.end_with?("?")
      @answer_coach = "Silly question, get dressed and go to work!"
    elsif @answer == "i am going to work right now!"
      @answer_coach = "Great!"
    else
      @answer_coach = "I don't care, get dressed and go to work!"
    end
  end
end
