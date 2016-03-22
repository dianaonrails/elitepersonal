# == Schema Information
#
# Table name: category_questions
#
#  id          :integer          not null, primary key
#  category_id :integer
#  question    :string
#  value       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CategoryQuestionsController < ApplicationController

	def update_questions
		if !params[:category_id].blank?
			@category_questions = CategoryQuestion.where(category_id: params[:category_id])
			if @category_questions.blank?
				@category_questions = 0	
			end
		else
			@category_questions = 0		
		end	
		@category_id = params[:category_id]
		render partial: 'update_questions', locals: { f: f }
	end

	def index
		@category_questions = CategoryQuestion.all
	end

	def show
	end	

	def create
	end	

	private
	    # Use callbacks to share common setup or constraints between actions.
	    def set_category_question
	      @vacancy = CategoryQuestion.find(params[:id])
	    end

	    # Never trust parameters from the scary internet, only allow the white list through.
	    def category_question_params
	      params[:category_question]
	    end	
end	
