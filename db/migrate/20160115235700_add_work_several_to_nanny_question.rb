class AddWorkSeveralToNannyQuestion < ActiveRecord::Migration
  def change
    add_column :nanny_questions, :work_several, :boolean
  end
end
