require "application_system_test_case"

class TopicAnswersTest < ApplicationSystemTestCase
  setup do
    @topic_answer = topic_answers(:one)
  end

  test "visiting the index" do
    visit topic_answers_url
    assert_selector "h1", text: "Topic Answers"
  end

  test "creating a Topic answer" do
    visit topic_answers_url
    click_on "New Topic Answer"

    fill_in "Content", with: @topic_answer.content
    check "Published" if @topic_answer.published
    fill_in "Title", with: @topic_answer.title
    click_on "Create Topic answer"

    assert_text "Topic answer was successfully created"
    click_on "Back"
  end

  test "updating a Topic answer" do
    visit topic_answers_url
    click_on "Edit", match: :first

    fill_in "Content", with: @topic_answer.content
    check "Published" if @topic_answer.published
    fill_in "Title", with: @topic_answer.title
    click_on "Update Topic answer"

    assert_text "Topic answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Topic answer" do
    visit topic_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Topic answer was successfully destroyed"
  end
end
