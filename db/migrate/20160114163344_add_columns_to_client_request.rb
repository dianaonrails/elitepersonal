class AddColumnsToClientRequest < ActiveRecord::Migration
  def change
  	add_column :client_requests, :client_id, :integer
  	add_column :client_requests, :gender, :string
  	add_column :client_requests, :height, :string
  	add_column :client_requests, :weight, :string
  	add_column :client_requests, :age_minimum, :integer
  	add_column :client_requests, :age_max, :integer
  	add_column :client_requests, :marital_status,:string
  	add_column :client_requests, :nationality,:string
  	add_column :client_requests, :citizenship,:string
  	add_column :client_requests, :smoker,:boolean
  	add_column :client_requests, :zodiac_sign,:string
  	add_column :client_requests, :driving_license,:boolean
  	add_column :client_requests, :car,:boolean
  	add_column :client_requests, :level_education_id,:integer
  	add_column :client_requests, :years_experience, :string
  	add_column :client_requests, :salary,:integer


  end
end
