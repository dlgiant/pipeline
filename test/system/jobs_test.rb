require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "creating a Job" do
    visit jobs_url
    click_on "New Job"

    fill_in "Company logo url", with: @job.company_logo_url
    fill_in "Description", with: @job.description
    fill_in "Expires", with: @job.expires
    fill_in "Requirements", with: @job.requirements
    fill_in "Responsibilities", with: @job.responsibilities
    fill_in "Salary", with: @job.salary
    fill_in "Title", with: @job.title
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "updating a Job" do
    visit jobs_url
    click_on "Edit", match: :first

    fill_in "Company logo url", with: @job.company_logo_url
    fill_in "Description", with: @job.description
    fill_in "Expires", with: @job.expires
    fill_in "Requirements", with: @job.requirements
    fill_in "Responsibilities", with: @job.responsibilities
    fill_in "Salary", with: @job.salary
    fill_in "Title", with: @job.title
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "destroying a Job" do
    visit jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job was successfully destroyed"
  end
end
