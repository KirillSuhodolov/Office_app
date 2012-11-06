class OrganizationsController < InheritedResources::Base
	load_and_authorize_resource
  def index
    @organizations = Organizations.order("organization_name").page(params[:page]).per_page(2)
  end

end
