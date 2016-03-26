# == Schema Information
#
# Table name: category_question_candidates
#
#  id                   :integer          not null, primary key
#  category_question_id :integer
#  candidate_id         :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class CategoryQuestionCandidateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
