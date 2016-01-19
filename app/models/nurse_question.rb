# == Schema Information
#
# Table name: nurse_questions
#
#  id                      :integer          not null, primary key
#  candidate_id            :integer
#  older_people            :boolean
#  ambulant_patients       :boolean
#  immobile_patients       :boolean
#  measurements            :boolean
#  intramuscular_injection :boolean
#  intravenous_injection   :boolean
#  procedures              :boolean
#  cleaning_cooking        :boolean
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  client_request_id       :integer
#

class NurseQuestion < ActiveRecord::Base
	belongs_to :candidate
	belongs_to :client_request
end
