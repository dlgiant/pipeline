require "application_system_test_case"

class SavedsTest < ApplicationSystemTestCase
  setup do
    @saved = saveds(:one)
  end

  test "visiting the index" do
    visit saveds_url
    assert_selector "h1", text: "Saveds"
  end

  test "creating a Saved" do
    visit saveds_url
    click_on "New Saved"

    click_on "Create Saved"

    assert_text "Saved was successfully created"
    click_on "Back"
  end

  test "updating a Saved" do
    visit saveds_url
    click_on "Edit", match: :first

    click_on "Update Saved"

    assert_text "Saved was successfully updated"
    click_on "Back"
  end

  test "destroying a Saved" do
    visit saveds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Saved was successfully destroyed"
  end
end
