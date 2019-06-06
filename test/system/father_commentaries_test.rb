require "application_system_test_case"

class FatherCommentariesTest < ApplicationSystemTestCase
  setup do
    @father_commentary = father_commentaries(:one)
  end

  test "visiting the index" do
    visit father_commentaries_url
    assert_selector "h1", text: "Father Commentaries"
  end

  test "creating a Father commentary" do
    visit father_commentaries_url
    click_on "New Father Commentary"

    click_on "Create Father commentary"

    assert_text "Father commentary was successfully created"
    click_on "Back"
  end

  test "updating a Father commentary" do
    visit father_commentaries_url
    click_on "Edit", match: :first

    click_on "Update Father commentary"

    assert_text "Father commentary was successfully updated"
    click_on "Back"
  end

  test "destroying a Father commentary" do
    visit father_commentaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Father commentary was successfully destroyed"
  end
end
