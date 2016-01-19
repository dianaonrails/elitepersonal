# == Schema Information
#
# Table name: candidate_languages
#
#  id           :integer          not null, primary key
#  candidate_id :integer
#  language_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class CandidateLanguage < ActiveRecord::Base
	belongs_to :candidate
	belongs_to :language
end
