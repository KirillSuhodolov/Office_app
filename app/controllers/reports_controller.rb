class ReportsController < InheritedResources::Base
	load_and_authorize_resource

  def index
    if current_user.role == "employe"
      @reports = @current_user.reports.order("report_name").page(params[:page]).per_page(8)     
      else
        @reports = Report.order("report_name").page(params[:page]).per_page(8)     
    end  
  end


  def create
    @report = Report.new(params[:report],
    										 :user_id => current_user.id)
    @report = current_user.reports.build(params[:report])
    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: 'Repot was successfully created.' }
        format.json { render json: @report, status: :created, location: @report }
      else
        format.html { render action: "new" }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

end
