class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    if params[:ask].present?
      @test_answers = @question = params[:ask]
    if @question == "I will go to work"
      @test_answers = @answers[0]
    elsif @question.ends_with?("?")
      @test_answers = @answers[1]
    else
      @test_answers = @answers[2]
  end
end
end
end
