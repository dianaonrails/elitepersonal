class CreateGeneralTranslations < ActiveRecord::Migration
  def change
    create_table :general_translations do |t|
      t.string :label
      t.text :en
      t.text :ru
      t.string :page

      t.timestamps null: false
    end
  end
end
