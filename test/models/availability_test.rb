# == Schema Information
#
# Table name: availabilities
#
#  id                :integer          not null, primary key
#  candidate_id      :integer
#  description       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  client_request_id :integer
#  en                :string
#  ru                :string
#

require 'test_helper'

class AvailabilityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
