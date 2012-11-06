class SubdivisionsController < InheritedResources::Base
	load_and_authorize_resource
  def index
    @subdivisions = Subdivision.order("subdivision_name").page(params[:page]).per_page(10)
  end

end
