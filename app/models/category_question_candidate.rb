# == Schema Information
#
# Table name: category_question_candidates
#
#  id                   :integer          not null, primary key
#  category_question_id :integer
#  candidate_id         :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class CategoryQuestionCandidate < ActiveRecord::Base
	belongs_to :category_question
	belongs_to :candidate
end
