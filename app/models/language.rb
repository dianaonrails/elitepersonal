# == Schema Information
#
# Table name: languages
#
#  id         :integer          not null, primary key
#  language   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Language < ActiveRecord::Base
	has_many :client_resquest_languages
	has_many :client_requests, through: :client_resquest_languages

	has_many :candidate_languages
	has_many :candidates, through: :candidate_languages
end
