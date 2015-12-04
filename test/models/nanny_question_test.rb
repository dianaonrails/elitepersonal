# == Schema Information
#
# Table name: nanny_questions
#
#  id                   :integer          not null, primary key
#  cooking              :boolean
#  walking              :boolean
#  cleaning             :boolean
#  education            :boolean
#  trips                :boolean
#  several              :boolean
#  household_help       :boolean
#  education_techniques :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class NannyQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
