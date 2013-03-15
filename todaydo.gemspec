
Gem::Specification.new do |s|
  s.name        = "todaydo"
  s.version     = "1.0.1"
  s.date        = "2013-03-15"
  s.summary     = "A productivity helper for Rails applications"
  s.description = "Get your todo stuff done, one day at a time"
  s.authors     = ["Adam Jones"]
  s.email       = "ajones1@gmail.com"
  s.files       = ["lib/todaydo.rb", "lib/tasks/todaydo.rake"]
  s.homepage    = "http://github.com/awj/todaydo"

  s.add_dependency 'rails', ">=3.0.0"
end
