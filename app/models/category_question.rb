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

class CategoryQuestion < ActiveRecord::Base
	has_many :category_question_candidates
	has_many :candidates, through: :category_question_candidates
end
