class QuestionsController < ApplicationController
  def ask
  end

  def answer
    question = params[:whatever]
    if question == 'I am going to work'
      params[:answer] = 'Great'
    elsif params[:whatever].end_with?("?")
      return params[:answer] = "Silly question, get dressed and go to work!"
    else
      params[:answer] = "I don\'t care, get dressed and go to work!"
    end
  end
end
