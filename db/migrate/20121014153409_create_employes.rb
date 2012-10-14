class CreateEmployes < ActiveRecord::Migration
  def change
    create_table :employes do |t|
      t.string :name

      t.timestamps
    end
  end
end
