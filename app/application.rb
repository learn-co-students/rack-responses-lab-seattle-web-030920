class Application

    def call(env)
        resp = Rack::Response.new
        resp.write (Time.now.hour.to_i < 12) ?  ["Good Morning!"] : ["Good Afternoon!"]
        resp.finish
      end

end