FactoryGirl.define do
  factory :page do
    title "About"
    body "Hello, this is test page"
    user_id 1
    position "right_menu"
  end
end
