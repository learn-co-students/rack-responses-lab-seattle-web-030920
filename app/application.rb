class Application
def call (env)
resp = Rack::Response.new

if Time.now.hour <= 12
    resp.write "Good Morning!"

else
    resp.write "Good Afternoon!"
end
resp.finish
end

#Time.now.hour<=12? ? ["<em>Good Morning!</em>"]:["<em>Good Afternoon!</em>"]
end