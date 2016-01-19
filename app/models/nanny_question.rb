# == Schema Information
#
# Table name: nanny_questions
#
#  id                   :integer          not null, primary key
#  cooking              :boolean
#  walking              :boolean
#  cleaning             :boolean
#  education            :boolean
#  trips                :boolean
#  several              :boolean
#  household_help       :boolean
#  education_techniques :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  birth_to_one         :string
#  one_to_three         :boolean
#  three_to_six         :boolean
#  regime               :boolean
#  work_several         :boolean
#  client_request_id    :integer
#  client_id            :integer
#  candidate_id         :integer
#  category_id          :integer
#

class NannyQuestion < ActiveRecord::Base
	belongs_to :candidate
	belongs_to :client_request
end
