# frozen_string_literal: true

require_relative "lib/tutorial/version"

Gem::Specification.new do |spec|
  spec.name          = "tutorial"
  spec.version       = Tutorial::VERSION
  spec.authors       = ["Author"]
  spec.email         = ["thrasherdota2@gmail.com"]

  spec.summary       = "LinkedIn Learnong - Watir Tutorial"
  spec.description   = "Watir Tutorial for LinkedIn Learning"
  spec.homepage      = "http://example.com"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://example.com"
  spec.metadata["changelog_uri"] = "http://example.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "ffi"
  spec.add_dependency "rspec"
  spec.add_dependency "watir"
  spec.add_dependency "webdrivers", "~> 4.0"
  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
