require "rails_helper"

feature "Create page" do
  let(:user) { create :user }
  def auth
    visit new_user_session_path
    fill_form(:user, email: user.email, password: user.password)
    click_button "Sign in"
  end

  scenario "User creates page with valid data" do
    auth
    visit new_page_path
    fill_in "Title", with: "Hi"
    fill_in "Body", with: "New page content"
    choose "top menu"
    click_button "Create Page"
    # save_and_open_page
    el = page.find(".top-bar")
    expect(el).to have_link("Hi")
    expect(Page.count).to eq(1)
  end

  scenario "User creates page with INvalid data" do
    auth
    visit new_page_path
    fill_in "Body", with: "New page content"
    click_button "Create Page"
    el = page.find(".top-bar")
    expect(el).to_not have_link("New page")
    expect(Page.count).to eq(0)
    expect(page).to have_content("can't be blank")
  end
end
