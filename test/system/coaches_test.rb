require "application_system_test_case"

class CoachesTest < ApplicationSystemTestCase
  setup do
    @coach = coaches(:one)
  end

  test "visiting the index" do
    visit coaches_url
    assert_selector "h1", text: "Coaches"
  end

  test "creating a Coach" do
    visit coaches_url
    click_on "New Coach"

    fill_in "Alamat", with: @coach.alamat
    fill_in "Email", with: @coach.email
    fill_in "Experience In Game", with: @coach.experience_in_game
    fill_in "Foto", with: @coach.foto
    fill_in "Game", with: @coach.game
    fill_in "Id Player", with: @coach.id_player
    fill_in "Nama", with: @coach.nama
    fill_in "Nickname", with: @coach.nickname
    click_on "Create Coach"

    assert_text "Coach was successfully created"
    click_on "Back"
  end

  test "updating a Coach" do
    visit coaches_url
    click_on "Edit", match: :first

    fill_in "Alamat", with: @coach.alamat
    fill_in "Email", with: @coach.email
    fill_in "Experience In Game", with: @coach.experience_in_game
    fill_in "Foto", with: @coach.foto
    fill_in "Game", with: @coach.game
    fill_in "Id Player", with: @coach.id_player
    fill_in "Nama", with: @coach.nama
    fill_in "Nickname", with: @coach.nickname
    click_on "Update Coach"

    assert_text "Coach was successfully updated"
    click_on "Back"
  end

  test "destroying a Coach" do
    visit coaches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coach was successfully destroyed"
  end
end
