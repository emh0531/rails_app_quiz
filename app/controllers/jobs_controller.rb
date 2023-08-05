class JobsController < ApplicationController
  before_action :set_job, only: [:show]

  def create
    @job = Job.new(job_params)

    if @job.save
        render json: @job, status: :created
    else 
        render json: @job.errors, status: :unprocessable_entity
    end 
end 

    def show
        render json: @job 
    end 

    def index
        @jobs = Job.all 
        render json: @jobs 
    end 

    private 

    def set_job
        @job = Job.find(params[:id])
    end 

    def job_params
        params.require(:job).permit(:url, :employer_name, :employer_description, :job_title, :job_description, :year_of_experience, :education_requirement, :industry, :base_salary, :employment_type_id)
    end 
end
