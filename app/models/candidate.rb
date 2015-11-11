# == Schema Information
#
# Table name: candidates
#
#  id           :integer          not null, primary key
#  name         :string
#  address      :string
#  mobile       :string
#  email        :string
#  citizenship  :string
#  availability :boolean
#  work_in      :boolean
#  start        :boolean
#  statment     :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Candidate < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, PhotoUploader
  mount_uploader :cv, CvUploader
end
