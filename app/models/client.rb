# == Schema Information
#
# Table name: clients
#
#  id          :integer          not null, primary key
#  name        :string
#  email       :string
#  phone       :string
#  message     :text
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Client < ActiveRecord::Base
end
