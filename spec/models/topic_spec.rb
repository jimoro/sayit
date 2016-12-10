require 'rails_helper'
require 'random_data'

RSpec.describe Topic, type: :model do
  let(:topic) { create(:topic) }

  it { is_expected.to have_many(:posts) }

  describe "attributes" do
    it "has name, description, and public attributes" do
      expect(topic).to have_attributes(name: topic.name, description: topic.description, public: topic.public)
    end

    it "is public by default" do
      expect(topic.public).to be(true)
    end
  end
end
