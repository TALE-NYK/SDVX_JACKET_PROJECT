require "application_system_test_case"

class TunesTest < ApplicationSystemTestCase
  setup do
    @tune = tunes(:one)
  end

  test "visiting the index" do
    visit tunes_url
    assert_selector "h1", text: "Tunes"
  end

  test "should create tune" do
    visit tunes_url
    click_on "New tune"

    fill_in "Difficulty", with: @tune.difficulty
    fill_in "Memo", with: @tune.memo
    fill_in "Name", with: @tune.name
    click_on "Create Tune"

    assert_text "Tune was successfully created"
    click_on "Back"
  end

  test "should update Tune" do
    visit tune_url(@tune)
    click_on "Edit this tune", match: :first

    fill_in "Difficulty", with: @tune.difficulty
    fill_in "Memo", with: @tune.memo
    fill_in "Name", with: @tune.name
    click_on "Update Tune"

    assert_text "Tune was successfully updated"
    click_on "Back"
  end

  test "should destroy Tune" do
    visit tune_url(@tune)
    click_on "Destroy this tune", match: :first

    assert_text "Tune was successfully destroyed"
  end
end
