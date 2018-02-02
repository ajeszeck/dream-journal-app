require 'rails_helper'

RSpec.describe User, type: :model do
  describe "attributes" do
    let(:user) { User.create(first_name: "First", last_name: "Last", username: "first.last", password: "password") }
    let(:dream) { Dream.create(content: "Test", sleep_date: Date.current, user_id: user.id) }

    it "is valid with a first_name" do
      expect(user.valid?).to eq true
    end

    it "is invalid without a first_name" do
      user.first_name = nil
      expect(user.valid?).to eq false
    end

    it "is valid with a last_name" do
      expect(user.valid?).to eq true
    end

    it "is invalid without a last_name" do
      user.last_name = nil
      expect(user.valid?).to eq false
    end

    it "is valid with a username" do
      expect(user.valid?).to eq true
    end

    it "is invalid without a username" do
      user.username = nil
      expect(user.valid?).to eq false
    end

    it "is valid with a password" do
      expect(user.valid?).to eq true
    end

    it "is invalid without a password" do
      user.password = nil
      expect(user.valid?).to eq false
    end
  end

  describe "associations" do
    let(:user) { User.create(first_name: "First", last_name: "Last", username: "first.last", password: "password") }
    let(:dream_one) { Dream.create(content: "Test_one", sleep_date: Date.current, user_id: user.id) }
    let(:dream_two) { Dream.create(content: "Test_two", sleep_date: Date.current, user_id: user.id) }

    it { should have_many(:dreams) }
  end
end
