class CreateNodeBlueprints < ActiveRecord::Migration
  def change
    create_table :node_blueprints do |t|
      t.string :category
      t.boolean :default_shareable_flag
      t.string :name
      t.boolean :optional_flag
      t.string :role
      t.references :pod, index: true

      t.timestamps
    end
  end
end
