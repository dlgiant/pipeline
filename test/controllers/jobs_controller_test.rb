require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
    @title = "Amazing job oportunity #{rand(1000)}"
  end

  test "should get index" do
    get jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { 
	job: { 
	   company_logo_url: @job.company_logo_url, 
           description: @job.description, 
           expires: @job.expires, 
           requirements: @job.requirements, 
           responsibilities: @job.responsibilities, 
           salary: @job.salary, 
           title: @title, 
        } 
      }
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { 
      job: { 
        company_logo_url: @job.company_logo_url, 
        description: @job.description, 
        expires: @job.expires, 
        requirements: @job.requirements, 
        responsibilities: @job.responsibilities, 
        salary: @job.salary, 
        title: @title 
      } 
    }
    assert_redirected_to job_url(@job)
  end

  test "can't delete job in saved" do
    assert_difference('Job.count', 0) do
      delete job_url(jobs(:two))
    end
    assert_redirected_to jobs_url
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job)
    end
    puts jobs_url
    puts @job.title
    puts @title
    assert_redirected_to jobs_url
  end
end
