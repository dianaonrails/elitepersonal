class AddRuToLanguage < ActiveRecord::Migration
  def change
    add_column :languages, :ru, :string
  end
end
