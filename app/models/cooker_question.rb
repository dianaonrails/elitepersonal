# == Schema Information
#
# Table name: cooker_questions
#
#  id                :integer          not null, primary key
#  candidate_id      :integer
#  family            :boolean
#  restaurants       :boolean
#  purchase          :boolean
#  menu              :boolean
#  banquets          :boolean
#  during_banquet    :boolean
#  kids              :boolean
#  diets             :boolean
#  knowledge_kitchen :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class CookerQuestion < ActiveRecord::Base
	belongs_to :candidate
end
