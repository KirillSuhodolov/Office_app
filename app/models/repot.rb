class Repot < ActiveRecord::Base
  attr_accessible :report_name, :description, :user_id, :hours, :organization_id, :subdivision_id
  belongs_to :user
end
