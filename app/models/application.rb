# == Schema Information
#
# Table name: applications
#
#  id           :integer          not null, primary key
#  state        :string
#  candidate_id :integer
#  vacancy_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Application < ActiveRecord::Base
end
