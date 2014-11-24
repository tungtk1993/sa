class ResumeController < ApplicationController
  before_action :authenticate_user!
  def apply
    @job = Job.find(params[:job_id])
  end

  def create
    @resume = Resume.new(resume_params)
    @resume.user_id = current_user.id;
    if @resume.save
      flash[:notice] = "Bạn đã nộp CV thành công!"
      redirect_to(:controller => 'job', :action => 'index')

    else
      redirect_to(:action => 'apply' ,:job_id => @resume.job_id)
    end
  end
  private
  def   resume_params
    params.require(:resume).permit(:job_id, :cover_letter, :cv)
  end
end
