# == Schema Information
#
# Table name: legal_works
#
#  id           :integer          not null, primary key
#  candidate_id :integer
#  description  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  en           :string
#  ru           :string
#

require 'test_helper'

class LegalWorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
