class AddBirthToOneToNannyQuestion < ActiveRecord::Migration
  def change
    add_column :nanny_questions, :birth_to_one, :string
  end
end
