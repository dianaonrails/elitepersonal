# == Schema Information
#
# Table name: education_infos
#
#  id           :integer          not null, primary key
#  candidate_id :integer
#  level        :string
#  history      :text
#  languages    :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class EducationInfo < ActiveRecord::Base
	belongs_to :candidate
end
