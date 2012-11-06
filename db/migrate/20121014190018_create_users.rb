class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :role
      t.integer :subdivision_id
    	t.integer :organization_id
      t.timestamps
    end
  end
end
