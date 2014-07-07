require 'spec_helper'

describe DynamoObserver do

  before(:all) do
    aws_config = { :dynamo_db_endpoint => 'localhost',
                   :dynamo_db_port     => 4567,
                   :access_key_id      => '00000',
                   :secret_access_key  => '00000',
                   :api_version        => '2012-08-10',
                   :use_ssl            => false }

    @dynamo_observer = DynamoObserver.new(aws_config: aws_config)

    new_table_params = { attribute_definitions: [ { attribute_name: 'something', attribute_type: 'S' } ],
                         key_schema: [ { attribute_name: 'something', key_type: 'HASH' } ],
                         provisioned_throughput: { read_capacity_units: 10, write_capacity_units: 5 },
                         table_name: 'some-random-collection-one' }

    @dynamo_observer.dynamo_client.create_table(new_table_params)
  end

  after(:all) do
    params = { table_name: 'some-random-collection-one' };
    @dynamo_observer.dynamo_client.delete_table(params)
  end

  it 'returns a list of collections' do
    expect(@dynamo_observer.collections.include?('some-random-collection-one')).to eq(true)
  end

end
