require 'rack'

class HelloRack
  def call(env)
    if HelloRack::REQUEST_PATH == "/"
      [200,{"Content-Type" => "text/html"},["Hello Rack!"]]
    else
      [400,{"Content-Type" => "text/html"},["Error!"]]
    end
  end
end

run HelloRack.new
