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

require 'test_helper'

class NurseQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
