# == Schema Information
#
# Table name: work_infos
#
#  id                 :integer          not null, primary key
#  category_id        :integer
#  sectors_experience :text
#  years_experience   :string
#  current_job        :string
#  last_employer      :string
#  key_skills         :text
#  salary             :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  candidate_id       :integer
#

class WorkInfo < ActiveRecord::Base
	belongs_to :candidate
end
