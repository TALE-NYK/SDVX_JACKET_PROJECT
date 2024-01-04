require "application_system_test_case"

class CharacterTunesTest < ApplicationSystemTestCase
  setup do
    @character_tune = character_tunes(:one)
  end

  test "visiting the index" do
    visit character_tunes_url
    assert_selector "h1", text: "Character tunes"
  end

  test "should create character tune" do
    visit character_tunes_url
    click_on "New character tune"

    fill_in "Character", with: @character_tune.character_id
    fill_in "Tune", with: @character_tune.tune_id
    click_on "Create Character tune"

    assert_text "Character tune was successfully created"
    click_on "Back"
  end

  test "should update Character tune" do
    visit character_tune_url(@character_tune)
    click_on "Edit this character tune", match: :first

    fill_in "Character", with: @character_tune.character_id
    fill_in "Tune", with: @character_tune.tune_id
    click_on "Update Character tune"

    assert_text "Character tune was successfully updated"
    click_on "Back"
  end

  test "should destroy Character tune" do
    visit character_tune_url(@character_tune)
    click_on "Destroy this character tune", match: :first

    assert_text "Character tune was successfully destroyed"
  end
end
