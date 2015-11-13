# == Schema Information
#
# Table name: applications
#
#  id           :integer          not null, primary key
#  state        :string
#  candidate_id :integer
#  vacancy_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class ApplicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
