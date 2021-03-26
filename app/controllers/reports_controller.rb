class ReportsController < ApplicationController
  before_action :set_report, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

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
  end

  def update
    report =Report.find(params[:id])
    report.update(report_params)
  end

  def show
  end


  private
  def report_params
    params.require(:report).permit(:title, :image, :report)
  end

  def set_report
    @report = Report.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
end
