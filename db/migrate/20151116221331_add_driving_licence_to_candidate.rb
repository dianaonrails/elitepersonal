class AddDrivingLicenceToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :driving_licence, :boolean
  end
end
