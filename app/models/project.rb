class Project < ActiveRecord::Base
	has_many :pods

	has_many :containers through: :pod
  has_many :address_range_blueprints through: :pod
	has_many :address_pool_blueprints through: :pod
	has_many :vlan_pool_blueprints through: :pod
	has_many :vlan_blueprints through: :pod
	has_many :nic_segment_blueprints through: :pod
	has_many :node_blueprints through: :pod
	has_many :port_type_blueprints through: :pod

	validates :name, presence: true
end
