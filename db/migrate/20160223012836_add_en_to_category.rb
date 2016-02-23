class AddEnToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :en, :string
  end
end
