# app/controllers/users/sessions_controller.rb
class Users::SessionsController < Devise::SessionsController
  private

  def respond_with(resource, _opts = {})
    render json: {
      token: current_token,
      user: resource.as_json(only: %i[id email name role])
    }, status: :ok
  end

  def respond_to_on_destroy
    head :no_content
  end

  def current_token
    request.env['warden-jwt_auth.token']
  end
end
