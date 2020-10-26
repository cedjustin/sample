require 'rails_helper'

RSpec.describe Task, type: :model do

  it "should not pass if the content is empty" do
    task = Task.new(content: "")
    expect(task).not_to be_valid
  end

  it "should pass if the content is provided" do
    task = Task.new(content: "hello")
    expect(task).to be_valid
  end

  it "should not pass if the characters of the content is more than 130" do
    task = Task.new(content: "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book.")
    expect(task).not_to be_valid
  end

  it "5+5 should equal 10" do
    expect(5 + 5).to eq 10
  end

end
