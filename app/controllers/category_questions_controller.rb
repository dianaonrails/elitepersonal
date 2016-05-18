# == Schema Information
#
# Table name: category_questions
#
#  id                     :integer          not null, primary key
#  category_id            :integer
#  question               :string
#  value                  :boolean
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  candidate_id           :integer
#  educational_techniques :text
#  birth_to_one           :boolean
#  one_to_three           :boolean
#  three_to_six           :boolean
#  five_to_seven          :boolean
#  seven_to_ten           :boolean
#  client_request_id      :integer
#  nanny_question_id      :integer
#  driver_question_id     :integer
#  questions_ru           :string
#  question_en            :string
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
