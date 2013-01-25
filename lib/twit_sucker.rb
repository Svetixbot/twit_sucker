require 'rubygems'
require 'twitter/json_stream'
require 'json'


class TwitSucker
	def self.run(path, *magic_words)

		if !Dir.exists?(path)
			Dir.mkdir(path)
		end
		Dir.chdir(path)

		EventMachine::run {

 		 stream = Twitter::JSONStream.connect(
  		  :path    => '/1/statuses/filter.json',
  		  :auth    => 'SFilimonova:QA3s4NLT',
   		  :method  => 'POST',
   		  :content => 'track=' + magic_words.join(',')
 		 )
		 i = 100
		 stream.each_item do |item|
   		  file = File.open(Time.now.to_s+i.to_s, 'w')
   		  file << JSON.parse(item)['text']
    		  puts JSON.parse(item)['text']
		  file.close
		  
		  if i<999 
			i+=1
		  else 
			i = 100
		  end	
		 end

		 trap('TERM') {
   		  stream.stop
   		  EventMachine.stop if EventMachine.reactor_running?
 		 }
		}

		
	end
end

