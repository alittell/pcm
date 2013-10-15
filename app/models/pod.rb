class Pod < ActiveRecord::Base
  belongs_to :project
  has_many :containers
  has_many :address_range_blueprints
	has_many :address_pool_blueprints
	has_many :vlan_pool_blueprints
	has_many :vlan_blueprints
	has_many :nic_segment_blueprints
	has_many :node_blueprints
	has_many :port_type_blueprints

  accepts_nested_attributes_for :address_range_blueprints,
  															:address_pool_blueprints,
  															:vlan_pool_blueprints,
  															:vlan_blueprints,
  															:nic_segment_blueprints,
  															:node_blueprints,
  															:port_type_blueprints,
  															allow_destroy: true
end
