Gem::Specification.new do |s|
  s.name        = 'twit_sucker'
  s.version     = '1.0.4'
  s.date        = '2013-01-25'
  s.summary     = "BusinessMinds demo component. Twits retriever"
  s.description = "BusinssMinds demo component for retrievering twits using twitter stream API and twitter-stream gem."
  s.authors     = ["Svetlana Filimonova"]
  s.email       = 'sfilimonova@me.com'
  s.files       = ["lib/twit_sucker.rb"]
  s.homepage    =
    'http://rubygems.org/gems/twit_sucker'
  s.executables << 'twit_sucker'	
  s.add_runtime_dependency 'twitter-stream'
  s.add_runtime_dependency 'json'
end
