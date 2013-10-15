class CreatePods < ActiveRecord::Migration
  def change
    create_table :pods do |t|
      t.string :name
      t.text :description
      t.string :major
      t.string :minor
      t.string :maint
      t.references :project, index: true

      t.timestamps
    end
  end
end
