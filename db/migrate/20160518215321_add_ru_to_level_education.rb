class AddRuToLevelEducation < ActiveRecord::Migration
  def change
    add_column :level_educations, :ru, :string
  end
end
