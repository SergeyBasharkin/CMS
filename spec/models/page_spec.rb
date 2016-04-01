require "rails_helper"

describe Page do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :body }
  it { is_expected.to validate_presence_of :user_id }
  it { should validate_inclusion_of(:position).in_array(%w(top_menu right_menu)) }
end
