class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:answer]
    return @response = 'Great!' if @question == 'I am going to work'

    return @response = 'Silly question, get dressed and go to work!' if @question.include?('?')

    @response = "I don't care, get dressed and go to work!"
  end
end
