class Organization < ActiveRecord::Base
  attr_accessible :description, :organization_name
  has_many :users
end
