# == Schema Information
#
# Table name: candidates
#
#  id               :integer          not null, primary key
#  name             :string
#  address          :string
#  mobile           :string
#  email            :string
#  citizenship      :string
#  availability     :boolean
#  work_in          :boolean
#  start            :boolean
#  statment         :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  photo            :string
#  cv               :string
#  birth_date       :date
#  gender           :string
#  height           :string
#  weight           :string
#  passport         :string
#  foreign_passport :string
#  marital_status   :string
#  children         :integer
#  sign             :string
#  first_name       :string
#  last_name        :string
#  nationality      :string
#  smoker           :boolean
#  driving_licence  :boolean
#  car              :boolean
#

class Candidate < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, PhotoUploader
  mount_uploader :cv, CvUploader
  
  validates :photo,:first_name,:last_name,:gender,:address,:mobile,:email,:birth_date,:nationality,:citizenship, presence:true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  has_one :education_info
  has_one :work_info

  has_many :availabilities

  accepts_nested_attributes_for :education_info, allow_destroy: true
  accepts_nested_attributes_for :work_info, allow_destroy: true
end
