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

class CategoryQuestion < ActiveRecord::Base
	has_many :category_question_candidates
	has_many :candidates, through: :category_question_candidates
end
