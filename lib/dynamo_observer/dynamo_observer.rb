class DynamoObserver

  attr_reader :aws_connection

  def initialize(config = {})
    @aws_connection = AWS.config(config[:aws_config])
  end

end
