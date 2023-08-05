# test/models/job_test.rb
require 'test_helper'

class JobTest < ActiveSupport::TestCase
  test "should not save job without required fields" do
    job = Job.new
    assert_not job.save, "Saved the job without required fields"
  end

  test "should save job with valid data" do
    job = Job.new(
      url: "http://example.com",
      employer_name: "Example Company",
      employer_description: "Description of the company",
      job_title: "Software Engineer",
      job_description: "Job description goes here",
      year_of_experience: 2,
      education_requirement: "Bachelor's Degree",
      industry: "IT",
      base_salary: 60000,
      employment_type_id: 1
    )
    assert job.save, "Failed to save the job with valid data"
  end
end


