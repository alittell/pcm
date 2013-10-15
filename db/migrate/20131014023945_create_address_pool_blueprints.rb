class CreateAddressPoolBlueprints < ActiveRecord::Migration
  def change
    create_table :address_pool_blueprints do |t|
      t.string :name
      t.string :default_public_flag
      t.string :default_shareable_flag
      t.string :nat_pool_name
      t.references :pod, index: true

      t.timestamps
    end
  end
end
