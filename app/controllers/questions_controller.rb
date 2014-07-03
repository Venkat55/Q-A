class QuestionsController < ApplicationController
	before_filter :authenticate_user!

	def index
		@questions = Question.all
		@answers = Answer.where("question_id = ?", params[:question_id])
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		@question.user_id = current_user.id
		if @question.save
			redirect_to questions_path 
		else
			render 'new'
		end
	end

	def my_questions
		@my_questions = current_user.questions
	end

	private
	def question_params
		params.require(:question).permit(:question)
	end
	
end
