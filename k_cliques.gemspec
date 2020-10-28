require_relative 'lib/k_cliques/version'

Gem::Specification.new do |spec|
  spec.name          = "k_cliques"
  spec.version       = KCliques::VERSION
  spec.authors       = ["Ricardo Yrupailla"]
  spec.email         = ["ry.yrupailla@gmail.com"]

  spec.summary       = "Find k size cliques"
  spec.description   = "Find k size cliques"
  spec.homepage      = "https://github.com/stg101/k_cliques"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/stg101/k_cliques"
  spec.metadata["changelog_uri"] = "https://github.com/stg101/k_cliques/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
