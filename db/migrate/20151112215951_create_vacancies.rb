class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :title
      t.string :country
      t.string :city
      t.string :salary
      t.text :description
      t.text :requirements

      t.timestamps null: false
    end
  end
end
