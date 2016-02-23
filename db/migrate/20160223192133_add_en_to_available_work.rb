class AddEnToAvailableWork < ActiveRecord::Migration
  def change
    add_column :available_works, :en, :string
  end
end
