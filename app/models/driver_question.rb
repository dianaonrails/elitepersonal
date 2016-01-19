# == Schema Information
#
# Table name: driver_questions
#
#  id                :integer          not null, primary key
#  candidate_id      :integer
#  personal_driver   :boolean
#  family_driver     :boolean
#  children          :boolean
#  knowledge_road    :boolean
#  confident         :boolean
#  washing           :boolean
#  luxury_car        :boolean
#  weapons_bodyguard :boolean
#  trips             :boolean
#  care_house        :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  client_request_id :integer
#

class DriverQuestion < ActiveRecord::Base
	belongs_to :client_request
	belongs_to :candidate
end
