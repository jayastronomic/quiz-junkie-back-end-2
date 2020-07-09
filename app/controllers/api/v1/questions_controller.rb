module Api
    module V1
        class QuestionsController < ApplicationController
            def index
                questions = Question.all
                incorrect_answers = questions.map do |question|
                    question.incorrect_answers
                end
                render json: {questions: questions, incorrect_answers: incorrect_answers }
            end
        end
    end
end
