require 'rails_helper'

RSpec.describe Answer, type: :model do
  let (:question) {Question.create!(title: "New Post Title", body: "New Post Body", resolved: 0)}
  let (:answer) {Answer.create!(body: "Comments", post: post)}
  
  describe "attributes" do
      it "has a body attribute" do
          expect(answer).to have_attributes(body: "Comment Body")
      end
  end
end