class ApplicationController < ActionController::API
  include Pundit::Authorization
  before_action :authenticate_user!


  # Devise failure app tries to write last-url into session; disable it
  protected
  def store_location_for(resource_or_scope, _location)
    # no-op in API only
  end

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    render json: { error: 'Not authorized' }, status: :forbidden
  end
end
