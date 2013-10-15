class CreateNicSegmentBlueprints < ActiveRecord::Migration
  def change
    create_table :nic_segment_blueprints do |t|
      t.string :address_pool_name
      t.string :customer_flag
      t.string :name
      t.boolean :management_flag
      t.string :network_name
      t.string :vlan_name
      t.references :pod, index: true

      t.timestamps
    end
  end
end
