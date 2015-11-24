# == Schema Information
#
# Table name: candidates
#
#  id                     :integer          not null, primary key
#  address                :string
#  mobile                 :string
#  email                  :string
#  citizenship            :string
#  start                  :boolean
#  statment               :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  photo                  :string
#  cv                     :string
#  birth_date             :date
#  gender                 :string
#  height                 :string
#  weight                 :string
#  passport               :string
#  foreign_passport       :string
#  marital_status         :string
#  children               :integer
#  sign                   :string
#  first_name             :string
#  last_name              :string
#  nationality            :string
#  smoker                 :boolean
#  driving_licence        :boolean
#  car                    :boolean
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  category_id            :integer
#  interview              :boolean
#

class Candidate < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:timeoutable, :timeout_in => 15.minutes
  
  mount_uploader :photo, PhotoUploader
  mount_uploader :cv, CvUploader

  scope :gender_feminine, -> {where(gender: 'f')}
  scope :gender_masculine, -> {where(gender: 'm')}

  
  
  
  validates :first_name,:last_name,:gender,:address,:mobile,:email,:birth_date,:nationality,:citizenship,:category_id, presence:true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  has_one :education_info
  has_one :work_info
  has_one :category

  has_many :availabilities
  has_many :available_works
  has_many :legal_works
  has_many :applications

  accepts_nested_attributes_for :education_info, allow_destroy: true
  accepts_nested_attributes_for :work_info, allow_destroy: true
end
