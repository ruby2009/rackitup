require 'rack'
require_relative 'bobross'
require_relative 'bacon'
require_relative 'hairy'

app = Proc.new do |env|
  # Finds the num of paragraphs requested, or sets it to 1
  num = env["REQUEST_PATH"].sub(/\/\w+[|\/]/, "")
  num = 1 if num.to_i.zero?

  path = env["PATH_INFO"]
  headers = {'Content-Type' => 'text/html'}
  if path == "/lipsum"
    ['200', headers, ["The lipsum available is bobross, bacon, or hairy"]]
  elsif path.start_with?("/bobross")
    ['200', headers, ["#{BobRossLipsum.call(num)}"]]
  elsif path.start_with?("/bacon")
    ['200', headers, ["#{BaconLipsum.call(num)}"]]
  elsif path.start_with?("/hairy")
    ['200', headers, ["#{HairyLipsum.call(num)}"]]
  elsif path == ("/current_time")
    ['200', headers, ["#{Time.now}"]]
  else
    ['404', headers, ["We're sorry. We couldn't that."]]
  end
end


Rack::Handler::WEBrick.run app
