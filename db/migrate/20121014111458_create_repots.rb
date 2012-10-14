class CreateRepots < ActiveRecord::Migration
  def change
    create_table :repots do |t|
      t.integer :eploye_id
      t.integer :subdivision_id
      t.integer :organization_id
      t.integer :hours
      t.string :description

      t.timestamps
    end
  end
end
