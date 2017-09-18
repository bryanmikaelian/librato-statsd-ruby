# -*- encoding: utf-8 -*-

Gem::Specification.new("librato-statsd-ruby", "1.0.0") do |s|
  s.authors = ["Bryan Mikaelian"]
  s.email = 'support@librato.com'

  s.summary = "A Ruby StatsD client with Librato support"

  s.homepage = "https://www.librato.com/docs/kb/collect/collection_agents/stastd.html"
  s.licenses = %w[MIT]

  s.extra_rdoc_files = %w[LICENSE.txt README.md]

  if $0 =~ /gem/ # If running under rubygems (building), otherwise, just leave
    s.files         = `git ls-files`.split($\)
    s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  end

  s.add_development_dependency "minitest", ">= 3.2.0"
  s.add_development_dependency "yard"
  s.add_development_dependency "simplecov", ">= 0.6.4"
  s.add_development_dependency "rake"
end
