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
#

require 'test_helper'

class DriverQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
