# == Schema Information
#
# Table name: interviews
#
#  id                :integer          not null, primary key
#  client_request_id :integer
#  candidate_id      :integer
#  interview_date    :date
#  address           :string
#  contact           :string
#  comments          :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class InterviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
