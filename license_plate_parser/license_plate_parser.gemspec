lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "license_plate_parser/version"

Gem::Specification.new do |spec|
  spec.name          = "license_plate_parser"
  spec.version       = LicensePlateParser::VERSION
  spec.authors       = ["@ymlihaa"]
  spec.email         = ["ymlihaa@gmail.com"]

  spec.summary       = %q{: Write a short summary, because RubyGems requires one.}
  spec.description   = %q{: Write a longer description or delete this line.}
  spec.homepage      = "http://guides.rubygems.org/specification-reference/"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "http://guides.rubygems.org/specification-reference/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://guides.rubygems.org/specification-reference/"
  spec.metadata["changelog_uri"] = "http://guides.rubygems.org/specification-reference/"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
