# == Schema Information
#
# Table name: interviews
#
#  id                :integer          not null, primary key
#  client_request_id :integer
#  candidate_id      :integer
#  interview_date    :date
#  address           :string
#  contact           :string
#  comments          :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  hour              :string
#

class Interview < ActiveRecord::Base
	validates :client_request_id,:candidate_id,:address,:interview_date,:hour, presence: true

	scope :expired, -> { where('interview_date < ?', Date.today) }
	scope :not_expired, -> { where('interview_date > ?', DateTime.now) }

	def expired?
		interview_date < Date.today
	end

	def not_expired?
		interview_date > Date.today
	end	
end
