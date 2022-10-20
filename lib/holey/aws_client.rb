require 'aws-sdk-iam'
module Holey
  class AwsClient
    # This uses AWS credentials that are present in ENV
    def self.client
      @@client ||= Aws::IAM::Client.new 
    end
  end
end
