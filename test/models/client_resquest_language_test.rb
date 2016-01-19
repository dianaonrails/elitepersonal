# == Schema Information
#
# Table name: client_resquest_languages
#
#  id                :integer          not null, primary key
#  client_request_id :integer
#  language_id       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class ClientResquestLanguageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
