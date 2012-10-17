class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string  :report_name
      t.integer :user_id
      t.integer :hours
      t.string :description

      t.timestamps
    end
  end
end
