require "application_system_test_case"

class InfoCardsTest < ApplicationSystemTestCase
  setup do
    @info_card = info_cards(:one)
  end

  test "visiting the index" do
    visit info_cards_url
    assert_selector "h1", text: "Info cards"
  end

  test "should create info card" do
    visit info_cards_url
    click_on "New info card"

    fill_in "Description", with: @info_card.description
    fill_in "Title", with: @info_card.title
    click_on "Create Info card"

    assert_text "Info card was successfully created"
    click_on "Back"
  end

  test "should update Info card" do
    visit info_card_url(@info_card)
    click_on "Edit this info card", match: :first

    fill_in "Description", with: @info_card.description
    fill_in "Title", with: @info_card.title
    click_on "Update Info card"

    assert_text "Info card was successfully updated"
    click_on "Back"
  end

  test "should destroy Info card" do
    visit info_card_url(@info_card)
    click_on "Destroy this info card", match: :first

    assert_text "Info card was successfully destroyed"
  end
end
