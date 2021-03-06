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

module CandidatesHelper
end
