class Application
    def call(env)
        resp = Rack::Response.new
     
        morning = 'Good Morning!'
        afternoon = 'Good Afternoon!'
        current_time = Time.now

        current_time.hour >= 12 ? (resp.write "#{afternoon}") : (resp.write "#{morning}")
     
        resp.finish
      end
end