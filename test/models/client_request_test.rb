# == Schema Information
#
# Table name: client_requests
#
#  id                 :integer          not null, primary key
#  full_name          :string
#  email              :string
#  phone              :string
#  category_id        :integer
#  message            :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  client_id          :integer
#  gender             :string
#  height             :string
#  weight             :string
#  age_minimum        :integer
#  age_max            :integer
#  marital_status     :string
#  nationality        :string
#  citizenship        :string
#  smoker             :boolean
#  zodiac_sign        :string
#  driving_license    :boolean
#  car                :boolean
#  level_education_id :integer
#  years_experience   :string
#  salary             :integer
#

require 'test_helper'

class ClientRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
