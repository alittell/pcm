class CreateVlanPoolBlueprints < ActiveRecord::Migration
  def change
    create_table :vlan_pool_blueprints do |t|
      t.string :name
      t.string :default_start_num
      t.string :default_end_num
      t.references :pod, index: true

      t.timestamps
    end
  end
end
