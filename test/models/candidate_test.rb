# == Schema Information
#
# Table name: candidates
#
#  id               :integer          not null, primary key
#  name             :string
#  address          :string
#  mobile           :string
#  email            :string
#  citizenship      :string
#  work_in          :boolean
#  start            :boolean
#  statment         :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  photo            :string
#  cv               :string
#  birth_date       :date
#  gender           :string
#  height           :string
#  weight           :string
#  passport         :string
#  foreign_passport :string
#  marital_status   :string
#  children         :integer
#  sign             :string
#  first_name       :string
#  last_name        :string
#  nationality      :string
#  smoker           :boolean
#  driving_licence  :boolean
#  car              :boolean
#

require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
