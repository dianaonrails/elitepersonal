# == Schema Information
#
# Table name: general_translations
#
#  id         :integer          not null, primary key
#  label      :string
#  en         :text
#  ru         :text
#  page       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GeneralTranslationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
