class AddRuToAvailability < ActiveRecord::Migration
  def change
    add_column :availabilities, :ru, :string
  end
end
