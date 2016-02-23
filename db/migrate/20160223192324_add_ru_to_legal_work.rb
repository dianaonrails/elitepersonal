class AddRuToLegalWork < ActiveRecord::Migration
  def change
    add_column :legal_works, :ru, :string
  end
end
