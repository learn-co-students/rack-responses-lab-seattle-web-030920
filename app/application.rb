class Application
    def call(env)
    
        output = ""
        resp = Rack::Response.new        
        if(Time.now.hour < 12)
            output =  "Good Morning!"            
        else
            output =  "Good Afternoon!"
        end
        resp.write output
        resp.finish
    end
end