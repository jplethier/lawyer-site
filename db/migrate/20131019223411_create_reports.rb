class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :title
      t.string :url
      t.string :brief

      t.timestamps
    end
  end
end
