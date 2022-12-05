require_relative "../../lib/assets/http/http_errors.rb"

class ApplicationController < ActionController::API
  def index()
    raise BadRequestError.new(
            { message: "Test message", data: { name: "Quang" } }
          )
  end
end
