require 'holey/aws_client'
module Holey
  class PolicyFetcher
    def get_policies
      policies = AwsClient.client.list_policies({
        scope: "All", # accepts All, AWS, Local
        only_attached: true,
        policy_usage_filter: "PermissionsPolicy", # accepts PermissionsPolicy, PermissionsBoundary
      })
      policies
    end
  end
end
