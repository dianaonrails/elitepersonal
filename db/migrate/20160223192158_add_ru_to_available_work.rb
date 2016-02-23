class AddRuToAvailableWork < ActiveRecord::Migration
  def change
    add_column :available_works, :ru, :string
  end
end
