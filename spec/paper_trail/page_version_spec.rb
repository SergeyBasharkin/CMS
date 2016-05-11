require 'rails_helper'
require 'spec_helper'
describe Page do
  let(:page){create :page}
    it "is possible to do assertions on versions" do
      expect(page.versions.size).to eq 0
    end
end