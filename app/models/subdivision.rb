class Subdivision < ActiveRecord::Base
  attr_accessible :description, :subdivision_name
  has_many :users
end
