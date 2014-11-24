class JobController < ApplicationController

  def index
    @search = Job.sorted.paginate(:page => params[:page], :per_page => 3).search(params[:q])
    #paginate(:page => params[:page], :per_page => 1)
    @jobs = @search.result.includes(:category)
    #@jobs = @cars.by_color(params[:color]) if params[:color].present?

  end
  def show
    @job = Job.find(params[:id])
  end


end
