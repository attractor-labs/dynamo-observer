class DynamoObserver

  attr_reader :dynamo_client

  def initialize(config = {})
    AWS.config(config[:aws_config])
    @dynamo_client  = AWS::DynamoDB::Client.new(:api_version => '2012-08-10')
  end

end
