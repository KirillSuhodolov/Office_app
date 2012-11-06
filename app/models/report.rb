class Report < ActiveRecord::Base
  attr_accessible :report_name, :description, :user_id, :hours
  belongs_to :user

  validates_presence_of :report_name, :description, :hours
end
