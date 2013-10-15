class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string :name
      t.text :description
      t.string :major
      t.string :minor
      t.string :maint
      t.references :pod, index: true

      t.timestamps
    end
  end
end
