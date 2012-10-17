class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :role
      t.string :subdivision_id
    	t.string :organization_id
      t.timestamps
    end
  end
end
