# == Schema Information
#
# Table name: assistance_questions
#
#  id              :integer          not null, primary key
#  candidate_id    :integer
#  dry_wet         :boolean
#  washing_ironing :boolean
#  vip             :boolean
#  cooking         :boolean
#  systems         :boolean
#  driving         :boolean
#  pool            :boolean
#  small_repairs   :boolean
#  cares           :boolean
#  garden          :boolean
#  plants          :boolean
#  pet_grooming    :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class AssistanceQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
