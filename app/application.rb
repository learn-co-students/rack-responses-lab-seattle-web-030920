class Application

    def call(env)
        resp = Rack::Response.new

        greet1 = "Good Morning!"
        greet2 = "Good Afternoon!"

        time = Time.now.hour

        if time < 12
            resp.write "#{greet1}"
        else 
            resp.write "#{greet2}"
        end
        resp.finish
    end
end 