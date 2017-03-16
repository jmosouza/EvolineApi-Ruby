Gem::Specification.new do |s|
  s.name        = 'evoline'
  s.version     = '0.0.2'
  s.date        = '2016-09-29'
  s.summary     = "Evoline API"
  s.description = "A gem to communicate with Evoline's API"
  s.authors     = ["Lucas Moulin", "João Souza"]
  s.email       = 'aride.moulin@gmail.com'
  s.homepage    = 'https://github.com/akz92/EvolineApi-Ruby'
  s.license     = 'MIT'
  s.files       = [
    "lib/evoline.rb",
    "lib/evoline/utils.rb",
    "lib/evoline/sms.rb",
    "lib/evoline/tts.rb",
    "lib/evoline/api_request.rb"
  ]
end
