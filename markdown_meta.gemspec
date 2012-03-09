Gem::Specification.new do |s|
  s.name = 'markdown_meta'
  s.version = '0.0.2'
  s.summary = "Meta-gem for markdown parsing"
  s.date = '2012-03-09'
  s.email = 'headius@headius.com'
  s.homepage = 'https://github.com/headius/markdown_meta'
  s.authors = ["Charles Oliver Nutter"]
  # = MANIFEST =
  s.files = %w[
    README.md
    markdown_meta.gemspec
    lib/markdown_meta.rb
    lib/markdown_meta/backend.rb
    lib/markdown_meta/backend/rdiscount.rb
    lib/markdown_meta/backend/kramdown.rb
    markdown_meta.gemspec
  ]
  # = MANIFEST =
  s.require_paths = ["lib"]
  s.add_dependency 'kramdown'
end
