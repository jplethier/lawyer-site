class AddGuidToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :guid, :string

    add_index :reports, :guid
  end
end
