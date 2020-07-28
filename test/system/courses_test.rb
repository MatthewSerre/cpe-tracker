require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  setup do
    @course = courses(:one)
  end

  test "visiting the index" do
    visit courses_url
    assert_selector "h1", text: "Courses"
  end

  test "creating a Course" do
    visit courses_url
    click_on "New Course"

    fill_in "Category", with: @course.category
    check "Cfe" if @course.cfe
    check "Cia" if @course.cia
    check "Cisa" if @course.cisa
    fill_in "Cost", with: @course.cost
    check "Cpa" if @course.cpa
    fill_in "Date", with: @course.date
    fill_in "Description", with: @course.description
    fill_in "Format", with: @course.format
    fill_in "Hours", with: @course.hours
    fill_in "Location", with: @course.location
    fill_in "Name", with: @course.name
    fill_in "Sponsor", with: @course.sponsor
    click_on "Create Course"

    assert_text "Course was successfully created"
    click_on "Back"
  end

  test "updating a Course" do
    visit courses_url
    click_on "Edit", match: :first

    fill_in "Category", with: @course.category
    check "Cfe" if @course.cfe
    check "Cia" if @course.cia
    check "Cisa" if @course.cisa
    fill_in "Cost", with: @course.cost
    check "Cpa" if @course.cpa
    fill_in "Date", with: @course.date
    fill_in "Description", with: @course.description
    fill_in "Format", with: @course.format
    fill_in "Hours", with: @course.hours
    fill_in "Location", with: @course.location
    fill_in "Name", with: @course.name
    fill_in "Sponsor", with: @course.sponsor
    click_on "Update Course"

    assert_text "Course was successfully updated"
    click_on "Back"
  end

  test "destroying a Course" do
    visit courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course was successfully destroyed"
  end
end
