class CreateSubdivisions < ActiveRecord::Migration
  def change
    create_table :subdivisions do |t|
      t.string :subdivision_name
      t.string :description
      t.integer :organization_id
      t.timestamps
    end
  end
end
