class CreateVlanBlueprints < ActiveRecord::Migration
  def change
    create_table :vlan_blueprints do |t|
      t.string :vlan_name
      t.string :vlan_pool_name
      t.references :pod, index: true

      t.timestamps
    end
  end
end
