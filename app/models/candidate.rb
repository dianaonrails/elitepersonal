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
#  description            :text
#  level_education_id     :integer
#  years_experience       :string
#  salary                 :string
#  country                :string
#  city                   :string
#  password               :string
#  date_start1            :date
#  date_end1              :date
#  employer1              :string
#  functions1             :text
#  date_start2            :date
#  date_end2              :date
#  employer2              :string
#  functions2             :text
#

class Candidate < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:timeoutable, :timeout_in => 15.minutes


  mount_uploader :photo, PhotoUploader
  mount_uploader :cv, CvUploader

  def birthday(age_min,age_max)
    
  end

  ransacker :by_language ,
    formatter: proc { |selected_language|
      results = Candidate.joins(:languages).where("languages.language IN (?)",selected_language)
      results = results.present? ? results : nil
    } do |candidate|
      candidate.table[:id]
  end

  def self.has_language(language)
    self.where("languages.id IN (?)",language).joins(:languages)
  end

  def current_age
    now = Time.now.utc.to_date
    now.year - birth_date.year - (birth_date.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  
  

  def nationality_name
    country = ISO3166::Country[nationality]
    country.translations[I18n.locale.to_s] || country.name
  end

  def citizenship_name
    country = ISO3166::Country[citizenship]
    country.translations[I18n.locale.to_s] || country.name
  end

  scope :gender_feminine, -> {where(gender: 'f')}
  scope :gender_masculine, -> {where(gender: 'm')}
  scope :gender, -> (gender) {where(gender: gender) if gender.present?}
  scope :height, -> (height) {where(height: height) if height.present?}
  scope :weight, -> (weight) {where(weight: weight) if weight.present?}
  scope :marital_status, -> (marital_status) {where(marital_status: marital_status) if marital_status.present?}
  scope :sign, -> (sign) {where(sign: sign) if sign.present?}
  scope :driving_licence, -> (driving_licence) {where(driving_licence: driving_licence) if driving_licence.present?}
  scope :car, -> (car) {where(car: car) if car.present?}
  scope :citizenship, -> (citizenship) {where(citizenship: citizenship) if citizenship.present?}
  scope :nationality, -> (nationality) {where(nationality: nationality) if nationality.present?}
  scope :age, -> (age_min, age_max) {where("extract(year from birth_date) BETWEEN ? AND ?", (Time.now.year -  age_max),(Time.now.year - age_min))}
  scope :category, -> (category_id) {where(category_id: category_id) if category_id.present?}
  scope :level_education, -> (level_education_id) {where(level_education_id: level_education_id) if level_education_id.present?}
  scope :languages, -> (languages) { where("languages.id IN (?)",languages).joins(:languages) if languages.present?}
  scope :years_experience, -> (years_experience) {where("years_experience >= ?", years_experience) if years_experience.present?}
  scope :availability, -> (availabilities) {where("availabilities.id IN (?)",availabilities).joins(:availabilities) if availabilities.present?}
  scope :available_work, -> (work_ids) {where("available_works.id IN (?)",work_ids).joins(:available_works) if work_ids.present?}

  
  
  validates :first_name,:last_name,:gender,:address,:mobile,:birth_date,:nationality,:citizenship,:category_id, :password,presence:true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates :availabilities, presence: true
  validates :available_works, presence: true
  validates :legal_works, presence: true

  #has_one :level_education
  has_one :education_info
  has_one :work_info
  has_one :category
 

  has_many :interviews
  has_many :availabilities
  has_many :available_works
  has_many :legal_works
  has_many :applications

  #has_many :category_questions

  has_many :candidate_languages
  has_many :languages, through: :candidate_languages

  has_many :category_question_candidates
  has_many :category_questions, through: :category_question_candidates


  accepts_nested_attributes_for :candidate_languages,allow_destroy: true
  #accepts_nested_attributes_for :category_questions,allow_destroy: true
  accepts_nested_attributes_for :education_info, allow_destroy: true
  accepts_nested_attributes_for :work_info, allow_destroy: true
  
end
