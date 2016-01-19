# == Schema Information
#
# Table name: category_questions
#
#  id                     :integer          not null, primary key
#  category_id            :integer
#  question               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  cooking                :boolean
#  regime                 :boolean
#  cleaning               :boolean
#  education              :boolean
#  trips                  :boolean
#  work_several           :boolean
#  household_help         :boolean
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
#

class CategoryQuestion < ActiveRecord::Base
	
end
