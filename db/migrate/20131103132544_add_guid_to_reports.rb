class AddGuidToReports < ActiveRecord::Migration
  def change
    add_column :reports, :guid, :string

    add_index :reports, :guid
  end
end
