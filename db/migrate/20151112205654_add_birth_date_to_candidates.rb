class AddBirthDateToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :birth_date, :date
  end
end
