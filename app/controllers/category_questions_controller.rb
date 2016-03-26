# == Schema Information
#
# Table name: category_questions
#
#  id           :integer          not null, primary key
#  category_id  :integer
#  question     :string
#  value        :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  questions_ru :string
#  question_en  :string
#

class CategoryQuestionsController < ApplicationController

	def get_questions
	
		if !params[:category_id].blank?
			@category_questions = CategoryQuestion.where(category_id: params[:category_id])
			
		else
			@category_questions = 0		
		end	
		
		render partial: 'get_questions'
	end

	def index
		@category_questions = CategoryQuestion.all
	end

	def show
	end	

	def create
	end	

	private
	    
	    # Never trust parameters from the scary internet, only allow the white list through.
	    def category_question_params
	      params[:category_question]
	    end	
end	
