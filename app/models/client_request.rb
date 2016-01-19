# == Schema Information
#
# Table name: client_requests
#
#  id                 :integer          not null, primary key
#  full_name          :string
#  email              :string
#  phone              :string
#  category_id        :integer
#  message            :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  client_id          :integer
#  gender             :string
#  height             :string
#  weight             :string
#  age_minimum        :integer
#  age_max            :integer
#  marital_status     :string
#  nationality        :string
#  citizenship        :string
#  smoker             :boolean
#  zodiac_sign        :string
#  driving_license    :boolean
#  car                :boolean
#  level_education_id :integer
#  years_experience   :string
#  salary             :integer
#

class ClientRequest < ActiveRecord::Base
	
	has_one :level_education

	has_many :client_resquest_languages
	has_many :languages, through: :client_resquest_languages

	has_many :availabilities
	has_many :available_works
	has_many :nanny_questions
	has_many :driver_questions
	has_many :housekeeper_questions
	has_many :cooker_questions
	has_many :governess_questions
	has_many :nurse_questions
	has_many :assistance_questions


  	accepts_nested_attributes_for :nanny_questions,allow_destroy: true
  	accepts_nested_attributes_for :driver_questions,allow_destroy: true
  	accepts_nested_attributes_for :housekeeper_questions, allow_destroy: true
  	accepts_nested_attributes_for :cooker_questions, allow_destroy: true
  	accepts_nested_attributes_for :governess_questions, allow_destroy: true
  	accepts_nested_attributes_for :nurse_questions, allow_destroy: true
  	accepts_nested_attributes_for :assistance_questions, allow_destroy: true
	accepts_nested_attributes_for :client_resquest_languages
end
