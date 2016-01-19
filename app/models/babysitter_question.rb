# == Schema Information
#
# Table name: babysitter_questions
#
#  id         :integer          not null, primary key
#  question   :string
#  value      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BabysitterQuestion < ActiveRecord::Base
end
