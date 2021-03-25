class ReportsController < ApplicationController
  
  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end

  def create
    Report.create(report_params)
  end

  def destroy
    report = Report.find(params[:id])
    report.destroy
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    report =Report.find(params[:id])
    report.update(report_params)
  end


  private
  def report_params
    params.require(:report).permit(:title, :image, :report)
  end

end
