# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pr2slack/version'

Gem::Specification.new do |spec|
  spec.name          = "pr2slack"
  spec.version       = Pr2slack::VERSION
  spec.authors       = ["kohrVid"]
  spec.email         = ["kohrVid@zoho.com"]

  spec.summary       = %q{Alert Slack about new Github PRs}
  spec.description   = %q{Alert Slack about new Github PRs}
  spec.homepage      = "https://github.com/kohrVid/pr2slack"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
    #spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
    #raise "RubyGems 2.0 or newer is required to protect against " \
      #"public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "json", ">= 1.8.3"
  spec.add_development_dependency "slack-ruby-bot"
  spec.add_development_dependency "celluloid-io"
  spec.add_development_dependency "pry-byebug"
  #spec.add_development_dependency "nokogiri"
  spec.add_runtime_dependency "json", ">= 1.8.3"
  spec.add_runtime_dependency "slack-ruby-bot"
  spec.add_runtime_dependency "celluloid-io"
  spec.add_runtime_dependency "pry-byebug"
  #spec.add_runtime_dependency "nokogiri"
end
