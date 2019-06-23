Gem::Specification.new do |spec|
  spec.name          = "mina-procodile"
  spec.version       = "1.0.5"
  spec.authors       = ["Dean Perry"]
  spec.email         = ["dean@voupe.com"]

  spec.summary       = "Mina tasks for controlling Procodile"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/deanpcmad/mina-procodile"
  spec.license       = "MIT"

  spec.files         = Dir.glob("{lib}/**/*")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
