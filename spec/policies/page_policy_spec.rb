# require 'rspec'
#
# describe PagePolicy do
#   describe 'edit?' do
#     let(:page) {create :page}
#
#     subject {described_class.new(user, page)}
#
#     context "with administrator" do
#       let(:user) {create :user, role: 'administrator'}
#       it {is_expected.to eq true}
#     end
#     context "with user" do
#       let(:user) {create :user, role: 'user'}
#       it {is_expected.to eq  false}
#     end
#   end
# end