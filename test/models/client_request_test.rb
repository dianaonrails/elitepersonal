# == Schema Information
#
# Table name: client_requests
#
#  id          :integer          not null, primary key
#  full_name   :string
#  email       :string
#  phone       :string
#  category_id :integer
#  message     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ClientRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
