# == Schema Information
#
# Table name: housekeeper_questions
#
#  id             :integer          not null, primary key
#  candidate_id   :integer
#  dry_wet        :boolean
#  washing        :boolean
#  vip            :boolean
#  furniture      :boolean
#  cooking        :boolean
#  plants_animals :boolean
#  appliances     :boolean
#  large_areas    :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class HousekeeperQuestion < ActiveRecord::Base
	belongs_to :candidate
end
