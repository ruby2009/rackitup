require_relative 'bobross'
require_relative 'bacon'
require_relative 'hairy'

 class App

   attr_accessor :env, :path

   def initialize(env)
     @env = env
     @path = env["PATH_INFO"]
     @num = env["REQUEST_PATH"].sub(/\/\w+[|\/]/, "").to_i
     @num = 1 if @num.zero?
     p env
   end

   def response
     if path == "/lipsum"
       choices
     elsif path.start_with?("/bobross")
       output(BobRossLipsum)
     elsif path.start_with?("/bacon")
       output(BaconLipsum)
     elsif path.start_with?("/hairy")
       output(HairyLipsum)
     elsif path == ("/current_time")
       time
     else
       fourohfour
     end
   end

   def output(lips)
     ['200', headers,["#{lips.call(@num)}"] ]
   end

   def choices
     ['200', headers, ["The lipsum available is bobross, bacon, or hairy"]]
   end

   def time
     ['200', headers, ["#{Time.now.strftime('%r')}"]]
   end

   def timezone

   end

   def fourohfour
     ['404', headers, ["We're sorry. We couldn't that."]]
   end

   def self.call(env)
     new(env).response
   end

   def headers
     {'Content-Type' => 'text/html'}
   end

 end
