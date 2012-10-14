class CreateEmployes < ActiveRecord::Migration
  def change
    create_table :employes do |t|
      t.string :employe_name

      t.timestamps
    end
  end
end
