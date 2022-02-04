class ApplicationController < ActionController::Base
  def home
    render json: { status: "It's working"}
  end
end
