class Application
 
    def call(env)
      resp = Rack::Response.new
      agora = Time.now
      if agora.hour >=12
        resp.write "Good Afternoon"
      else
        resp.write "Good Morning"
      end
      
   
      
      resp.finish
    end
   
  end
