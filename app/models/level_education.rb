# == Schema Information
#
# Table name: level_educations
#
#  id         :integer          not null, primary key
#  level      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ru         :string
#

class LevelEducation < ActiveRecord::Base
end
