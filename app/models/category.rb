# == Schema Information
#
# Table name: categories
#
#  id           :integer          not null, primary key
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  candidate_id :integer
#

class Category < ActiveRecord::Base
	#translates :title
	has_many :vacancies
	validates :title, presence: true


	accepts_nested_attributes_for :vacancies
	
end
