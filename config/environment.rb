# Load the rails application
require File.expand_path('../application', __FILE__)
#require 'rake'


# Initialize the rails application
#OfficeApp::Application.initialize!

ActiveSupport::Deprecation.silence do
  OfficeApp::Application.initialize!
end