# == Schema Information
#
# Table name: category_questions
#
#  id          :integer          not null, primary key
#  category_id :integer
#  question    :string
#  value       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CategoryQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
