class Job < ApplicationRecord
    validates :url, :employer_name, :employer_description, :job_title, :job_description, :year_of_experience, :education_requirement, :industry, :base_salary, :employment_type_id, presence: true
    validates :year_of_experience, :base_salary, :employment_type_id, numericality: { only_integer: true }
end
  