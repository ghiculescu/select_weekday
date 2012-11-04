Gem::Specification.new do |s|
  s.name        = 'select_weekday'
  s.version     = '0.0.1'
  s.date        = '2012-11-04'
  s.platform    = Gem::Platform::RUBY
  s.summary     = "select_weekday"
  s.description = "A <select> tag for days of the week, plus some convenience methods for handling weekdays"
  s.authors     = ["Alex Ghiculescu"]
  s.email       = 'alexghiculescu@gmail.com'
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'
  s.homepage    = 'http://rubygems.org/gems/select_weekday'
  s.add_runtime_dependency 'activesupport', '~> 3'
end