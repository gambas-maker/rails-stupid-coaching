class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]

    if params[:question] == 'i am going to work right now!'
      @answer = ''
    elsif params[:question].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
