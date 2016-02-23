class AddEnToLegalWork < ActiveRecord::Migration
  def change
    add_column :legal_works, :en, :string
  end
end
