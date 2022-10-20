Gem::Specification.new do |s|
  s.name        = "holey"
  s.version     = "0.0.1"
  s.summary     = "Prevents 100% Aegean-fed Trojan Horses"
  s.description = "A gem for finding holes in your AWS IAM policies"
  s.authors     = ["Hanno Opperman"]
  s.email       = "hannopperman@gmail.com"
  s.files       = ["lib/holey.rb", "lib/holey/policy_fetcher.rb", "lib/holey/aws_client.rb"]
  s.homepage    = "https://github.com/Hopperman/holey"
  s.license     = "MIT"
  s.add_runtime_dependency('aws-sdk-iam', '1.71.0')
end
