require 'rails_helper'

RSpec.describe "Tasks", type: :system do
  
  scenario "Test task list" do
    visit new_task_path
    fill_in "task[content]", with: "task1"
    click_on "save"
    click_on "confirm"
    visit tasks_path
    expect(page).to have_content("task1")
  end

  scenario "Test task list" do
    visit new_task_path
    fill_in "task[content]", with: ""
    click_on "save"
    click_on "confirm"
    expect(page).to have_content("content can not be blank")
  end

end
