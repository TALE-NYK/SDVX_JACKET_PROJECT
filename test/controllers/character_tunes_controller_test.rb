require "test_helper"

class CharacterTunesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_tune = character_tunes(:one)
  end

  test "should get index" do
    get character_tunes_url
    assert_response :success
  end

  test "should get new" do
    get new_character_tune_url
    assert_response :success
  end

  test "should create character_tune" do
    assert_difference("CharacterTune.count") do
      post character_tunes_url, params: { character_tune: { character_id: @character_tune.character_id, tune_id: @character_tune.tune_id } }
    end

    assert_redirected_to character_tune_url(CharacterTune.last)
  end

  test "should show character_tune" do
    get character_tune_url(@character_tune)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_tune_url(@character_tune)
    assert_response :success
  end

  test "should update character_tune" do
    patch character_tune_url(@character_tune), params: { character_tune: { character_id: @character_tune.character_id, tune_id: @character_tune.tune_id } }
    assert_redirected_to character_tune_url(@character_tune)
  end

  test "should destroy character_tune" do
    assert_difference("CharacterTune.count", -1) do
      delete character_tune_url(@character_tune)
    end

    assert_redirected_to character_tunes_url
  end
end
