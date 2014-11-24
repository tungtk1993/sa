class Job < ActiveRecord::Base
  belongs_to :category
  belongs_to :company
  has_many :resumes
  scope :sorted, lambda{ order("date_start DESC")}
  scope :by_category, lambda { |category| where(:category => category)}
  scope :by_location, lambda { |location| where(:location => location)}
  scope :by_job_level,lambda { |job_level| where(:job_level => job_level)}
  scope :by_salary , lambda { |salary| where(:salary => salary)}
  scope :salary_gt, lambda {|amount| where('salary > ?', amount) }
  #def products
  #  @jobs ||= find_jobs
  #end
  #
  #def find_jobs
  #  jobs = Job.where("name like ?", "%#{name}%") if name.present?
  #end
end
