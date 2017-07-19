require 'rails_helper'

RSpec.describe Sponsoredpost, type: :model do

    let(:title) { RandomData.random_sentence }
    let(:body) { RandomData.random_paragraph }
    let(:price) { 25 }
    let(:topic) { Topic.create!(name: name, description: description) }
    let(:sponsoredpost) { sponsoredpost.create!(title: title, body: body, price: price) }

    describe "attributes" do
        it "has name, description, and public attributes" do
            expect(topic).to have_attributes(name: name, description: description, public: public)
        end
        
    end

end
