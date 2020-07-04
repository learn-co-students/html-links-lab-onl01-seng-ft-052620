require 'rack'

class MyServer
def call(env)
    return [200, {'content-type'=>'text/html'}, File.open("index.html")]
end
end

run MyServer.new