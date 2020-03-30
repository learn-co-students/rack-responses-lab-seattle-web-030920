class Application(t)
    def call(env)
        resp = Rack::Response.new
     
        morning = 'Good Morning!'
        afternoon = 'Good Afternoon'
        current_time = Time.new(t)

        current_time.hour < 13 ? (resp.write "#{morning}") : (resp.write "#{afternoon}")
     
        resp.finish
      end
end