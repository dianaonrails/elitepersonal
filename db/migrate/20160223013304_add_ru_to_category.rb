class AddRuToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :ru, :string
  end
end
