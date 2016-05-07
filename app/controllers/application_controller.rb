class ApplicationController < ActionController::Base
  include Authentication
  include Authorization

  protect_from_forgery with: :exception

  responders :flash
  respond_to :html

  before_filter :set_paper_trail_whodunnit

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end
end
