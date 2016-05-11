require 'differ'
class PagesController < ApplicationController
  before_action :authenticate_user!, only: %w(new create edit update destroy)

  respond_to :html

  expose_decorated(:page, attributes: :page_params)
  expose_decorated(:pages) {Page.includes(:user)}
  expose(:user_pages) {current_user.pages}
  # expose(:page, attributes: :page_params) # if have id Page.find else create new

  def new
  end

  def index
  end

  def edit
  end

  def home
  end

  def create
    page.user = current_user
    # binding.pry
    flash[:notice] = "Page was successfully created" if page.save
    respond_with page, location: pages_path # views/pages/_page.html.slim
  end

  def show
  end

  def test
  end

  def update
    flash[:notice] = "Page was successfully updated." if page.save
    respond_with page, location: pages_path
  end

  def destroy
    page.destroy
    respond_with page, location: pages_path
  end

  private
  def page_params
    params.require(:page).permit(:user_id,
                                 :title,
                                 :body,
                                 :position,
                                 :url)
  end
end
