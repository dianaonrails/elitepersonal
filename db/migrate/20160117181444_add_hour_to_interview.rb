class AddHourToInterview < ActiveRecord::Migration
  def change
    add_column :interviews, :hour, :string
  end
end
