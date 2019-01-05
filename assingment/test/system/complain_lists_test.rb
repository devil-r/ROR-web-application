require "application_system_test_case"

class ComplainListsTest < ApplicationSystemTestCase
  setup do
    @complain_list = complain_lists(:one)
  end

  test "visiting the index" do
    visit complain_lists_url
    assert_selector "h1", text: "Complain Lists"
  end

  test "creating a Complain list" do
    visit complain_lists_url
    click_on "New Complain List"

    fill_in "Description", with: @complain_list.description
    fill_in "Title", with: @complain_list.title
    click_on "Create Complain list"

    assert_text "Complain list was successfully created"
    click_on "Back"
  end

  test "updating a Complain list" do
    visit complain_lists_url
    click_on "Edit", match: :first

    fill_in "Description", with: @complain_list.description
    fill_in "Title", with: @complain_list.title
    click_on "Update Complain list"

    assert_text "Complain list was successfully updated"
    click_on "Back"
  end

  test "destroying a Complain list" do
    visit complain_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complain list was successfully destroyed"
  end
end
