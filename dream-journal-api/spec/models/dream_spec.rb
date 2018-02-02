require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe Dream, type: :model do
  describe "Attributes" do
    let(:user) { User.create(first_name: "First", last_name: "Last", username: "firstlast", password: "password") }
    let(:dream) { Dream.create(content: "Test", sleep_date: Date.current, user_id: user.id) }

    it "is valid with content" do
      expect(dream.valid?).to eq true
    end

    it "is invalid without content" do
      dream.content = nil
      expect(dream.valid?).to eq false
    end

    it "is valid with a date" do
      expect(dream.valid?).to eq true
    end

    it "is invalid without a date" do
      dream.sleep_date = nil
      expect(dream.valid?).to eq false
    end
  end

  describe "Associations" do
    it { should belong_to(:user) }
  end
end
