require 'rspec'
require 'rails_helper'
describe PagePolicy do
  subject { described_class }
  let(:page) {create :page}

  permissions :edit? do

    let(:admin) {create :user, role: 'administrator'}

    it "whith administrator" do
      expect(subject).to permit(admin, page)
    end

    let(:user) {create :user, role: 'user'}
    it "whith user" do
      expect(subject).not_to permit(user, page)
    end

  end
end