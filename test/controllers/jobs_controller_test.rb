# test/controllers/jobs_controller_test.rb
require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { url: @job.url, employer_name: @job.employer_name, employer_description: @job.employer_description, job_title: @job.job_title, job_description: @job.job_description, year_of_experience: @job.year_of_experience, education_requirement: @job.education_requirement, industry: @job.industry, base_salary: @job.base_salary, employment_type_id: @job.employment_type_id } }, as: :json
    end

    assert_response 201
  end

  test "should show job" do
    get job_url(@job), as: :json
    assert_response :success
  end

  test "should get index" do
    get jobs_url, as: :json
    assert_response :success
  end
end

