# == Schema Information
#
# Table name: availabilities
#
#  id           :integer          not null, primary key
#  candidate_id :integer
#  description  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Availability < ActiveRecord::Base
end
