class Repot < ActiveRecord::Base
  attr_accessible :report_name, :description, :eploye_id, :hours, :organization_id, :subdivision_id
end
