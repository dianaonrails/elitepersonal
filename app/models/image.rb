# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  label      :string
#  page       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string
#

class Image < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
