require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Validation" do
    it "should not pass if the content is empty" do
      task = Task.new(content: "", title: "title1")
      expect(task).not_to be_valid
    end
  end
end
