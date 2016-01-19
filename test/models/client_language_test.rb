# == Schema Information
#
# Table name: client_languages
#
#  id          :integer          not null, primary key
#  client_id   :integer
#  language_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ClientLanguageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
