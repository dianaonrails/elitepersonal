# == Schema Information
#
# Table name: legal_works
#
#  id           :integer          not null, primary key
#  candidate_id :integer
#  description  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  en           :string
#  ru           :string
#

class LegalWork < ActiveRecord::Base
end
