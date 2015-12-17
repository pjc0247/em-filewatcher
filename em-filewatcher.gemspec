Gem::Specification.new do |s|
  s.name        = "em-filewatcher"
  s.version     = "1.0.2"
  s.summary     = "em-filewatcher"
  s.description = "em-filewatcher"
  s.authors     = ["pjc0247"]
  s.email       = 'pjc0247@naver.com'
  s.files = Dir["{lib}/**/*.rb"]
  
  s.add_development_dependency "eventmachine"
  s.add_development_dependency "filewatcher"
end
