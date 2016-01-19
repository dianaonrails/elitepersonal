# == Schema Information
#
# Table name: candidate_languages
#
#  id           :integer          not null, primary key
#  candidate_id :integer
#  language_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class CandidateLanguageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
