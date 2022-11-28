require "application_system_test_case"

class CommentairesTest < ApplicationSystemTestCase
  setup do
    @commentaire = commentaires(:one)
  end

  test "visiting the index" do
    visit commentaires_url
    assert_selector "h1", text: "Commentaires"
  end

  test "should create commentaire" do
    visit commentaires_url
    click_on "New commentaire"

    fill_in "Content", with: @commentaire.content
    fill_in "Rate", with: @commentaire.rate
    click_on "Create Commentaire"

    assert_text "Commentaire was successfully created"
    click_on "Back"
  end

  test "should update Commentaire" do
    visit commentaire_url(@commentaire)
    click_on "Edit this commentaire", match: :first

    fill_in "Content", with: @commentaire.content
    fill_in "Rate", with: @commentaire.rate
    click_on "Update Commentaire"

    assert_text "Commentaire was successfully updated"
    click_on "Back"
  end

  test "should destroy Commentaire" do
    visit commentaire_url(@commentaire)
    click_on "Destroy this commentaire", match: :first

    assert_text "Commentaire was successfully destroyed"
  end
end
