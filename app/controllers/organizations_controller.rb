class OrganizationsController < InheritedResources::Base
	load_and_authorize_resource
  def index
    @organizations = Organization.order("organization_name").page(params[:page]).per_page(10)
  end

end
