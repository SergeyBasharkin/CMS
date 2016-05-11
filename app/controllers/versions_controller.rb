class VersionsController < ApplicationController
  before_action :authenticate_user!

  respond_to :html

  expose_decorated(:version) {set_page.versions.find(params[:ver])}

  expose_decorated(:page) {set_page}
  expose(:pages) {Page.includes(:user).sorted}

  def show
    @diff=Differ.diff_by_word(version.reify.body, page.body).format_as(:html).html_safe
  end

  def destroy
    version.destroy
    flash[:notice] = "Version was successfully deleted."
    respond_with page, location: page_path
  end

  def accept
    page=version.reify
    version.destroy
    page.save
    flash[:notice] = "Version was successfully accept."
    redirect_to page_path(page)
  end
  private
  def set_page
    Page.find(params[:id])
  end
end
