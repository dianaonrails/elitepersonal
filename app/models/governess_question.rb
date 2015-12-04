# == Schema Information
#
# Table name: governess_questions
#
#  id                :integer          not null, primary key
#  candidate_id      :integer
#  five_to_seven     :boolean
#  seven_to_ten      :boolean
#  cooking           :boolean
#  school            :boolean
#  assistant         :boolean
#  foreign_languages :boolean
#  several_children  :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class GovernessQuestion < ActiveRecord::Base
	belongs_to :candidate
end
