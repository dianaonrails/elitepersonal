# == Schema Information
#
# Table name: category_questions
#
#  id          :integer          not null, primary key
#  category_id :integer
#  question    :string
#  value       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CategoryQuestion < ActiveRecord::Base
end
