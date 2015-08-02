# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dhcp/gateway/provider/sniffer/version'

Gem::Specification.new do |spec|
  spec.name          = "dhcp-gateway-provider-sniffer"
  spec.version       = Dhcp::Gateway::Provider::Sniffer::VERSION
  spec.authors       = ["Mathias Kaufmann"]
  spec.email         = ["me@stei.gr"]

  spec.summary       = %q{Packet logger plugin for dhcp-gateway.}
  spec.description   = %q{Packet logger for dhcp-gateway.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
