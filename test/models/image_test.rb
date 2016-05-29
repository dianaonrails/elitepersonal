# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  label      :string
#  page       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string
#

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
