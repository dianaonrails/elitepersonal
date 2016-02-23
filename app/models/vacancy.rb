# == Schema Information
#
# Table name: vacancies
#
#  id           :integer          not null, primary key
#  title        :string
#  country      :string
#  city         :string
#  salary       :string
#  description  :text
#  requirements :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category_id  :integer
#

class Vacancy < ActiveRecord::Base
	belongs_to :category, :foreign_key => 'category_id'
	has_many :applications
end
