class HTTPError < StandardError
  attr_accessor :message, :code, :data

  def initialize(message, code, data)
    @message = message
    @code = code
    @data = data
  end
end

class BadRequestError < HTTPError
  def initialize(args = {})
    super(
      args.key?(:message) ? args[:message] : "Bad request error",
      400,
      args.key?(:data) ? args[:data] : nil
    )
  end
end

class UnauthorizedError < HTTPError
  def initialize(args = {})
    super(
      args.key?(:message) ? args[:message] : "Unauthorized error",
      401,
      args.key?(:data) ? args[:data] : nil
    )
  end
end

class ForbiddenError < HTTPError
  def initialize(args = {})
    super(
      args.key?(:message) ? args[:message] : "Forbidden error",
      403,
      args.key?(:data) ? args[:data] : nil
    )
  end
end

class NotFoundError < HTTPError
  def initialize(args = {})
    super(
      args.key?(:message) ? args[:message] : "Not found error",
      404,
      args.key?(:data) ? args[:data] : nil
    )
  end
end

class ConflictError < HTTPError
  def initialize(args = {})
    super(
      args.key?(:message) ? args[:message] : "Conflict error",
      409,
      args.key?(:data) ? args[:data] : nil
    )
  end
end

class InternalServerError < HTTPError
  def initialize(args = {})
    super(
      args.key?(:message) ? args[:message] : "Internal server error",
      500,
      nil
    )
  end
end
