class Subdivision < ActiveRecord::Base
  attr_accessible :description, :subdivision_name, :organization_id
  has_many :users
  belongs_to :organization
end
