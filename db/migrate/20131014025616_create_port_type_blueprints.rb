class CreatePortTypeBlueprints < ActiveRecord::Migration
  def change
    create_table :port_type_blueprints do |t|
      t.string :name
      t.string :name_within_switch
      t.string :nic_segment_name
      t.references :node_blueprint, index: true

      t.timestamps
    end
  end
end
