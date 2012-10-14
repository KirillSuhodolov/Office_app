class Repot < ActiveRecord::Base
  attr_accessible :repot_name, :description, :eploye_id, :hours, :organization_id, :subdivision_id
end
