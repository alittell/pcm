class CreateAddressRangeBlueprints < ActiveRecord::Migration
  def change
    create_table :address_range_blueprints do |t|
      t.string :name
      t.string :default_pool_mask
      t.string :default_public_flag
      t.references :pod, index: true

      t.timestamps
    end
  end
end
