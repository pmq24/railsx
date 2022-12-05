require "json"

require_relative "../assets/http/http_errors.rb"

class HTTPErrorHandler
  def initialize(app)
    @app = app
  end

  def call(env)
    begin
      @app.call(env)
    rescue HTTPError => error
      return [
        error.code,
        {},
        [{ message: error.message, data: error.data }.to_json()]
      ]
    end
  end
end
