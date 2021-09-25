require 'grpc'
require './scaler_services_pb'
require './scaler_pb'
require 'json'

def main
  params = pull_params(ARGV[0])
  request = Scaler::ScaleRequest.new(params)
  hostname = ARGV.size > 1 ?  ARGV[1] : 'localhost:50051'
  stub = Scaler::Scaler::Stub.new(hostname, :this_channel_is_insecure)
  begin
    response = stub.scale(request)
    puts response.to_json
  rescue GRPC::BadStatus => e
    abort "ERROR: #{e.message}"
  end
end

def pull_params(params)
  JSON.parse(params, symbolize_names: true)
end

main