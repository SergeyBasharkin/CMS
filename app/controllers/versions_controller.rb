class VersionsController < ApplicationController
  before_action :authenticate_user!

  respond_to :html

  expose_decorated(:version) {set_page.versions.find(params[:ver])}

  expose_decorated(:page) {set_page}
  expose_decorated(:pages) {Page.includes(:user).sorted}

  def show
  end

  def destroy
    version.destroy
    flash[:notice] = "Version was successfully deleted."
    respond_with page, location: page_path
  end

  def accept
    page=set_page
    page=version.reify
    page.save
    redirect_to page_path
  end
  private
  def set_page
    Page.find(params[:id])
  end
end
