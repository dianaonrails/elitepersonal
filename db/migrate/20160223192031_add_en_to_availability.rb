class AddEnToAvailability < ActiveRecord::Migration
  def change
    add_column :availabilities, :en, :string
  end
end
