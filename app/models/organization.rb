class Organization < ActiveRecord::Base
  attr_accessible :description, :organization_name
  has_many :users
  has_many :subdivisions
end
