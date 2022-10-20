module Holey
  def self.logger
    @@logger ||= defined?(Rails) ? Rails.logger : Logger.new(STDOUT)
  end

  def self.logger=(logger)
    @@logger = logger
  end
  # o(logN) time 

  # 1: get all used policies
  # 1.1: #list_policies with only_attached: true

  # loop through each policy, get their versions and the grant of each version

  # concurrent ruby, 4 promises.

  def self.set_policies
    PolicyFetcher.new.get_policies
  rescue Aws::IAM::Errors::AccessDenied
    Holey.logger.error 'AWS credentials are not configured / you lack correct permissions to access IAM policies.'
  end
end
require 'holey/policy_fetcher'
