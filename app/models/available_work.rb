# == Schema Information
#
# Table name: available_works
#
#  id                :integer          not null, primary key
#  candidate_id      :integer
#  description       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  client_request_id :integer
#  en                :string
#  ru                :string
#

class AvailableWork < ActiveRecord::Base
end
