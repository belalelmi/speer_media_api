class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  def home
    render json: { status: "It's working"}
  end
end
