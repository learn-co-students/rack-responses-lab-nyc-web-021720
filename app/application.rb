class Application 
    #if before noon, writes "Good Morning!", if after noon, "Good Afternoon!"
    def call(env)
        resp = Rack::Response.new
        current_time = Time.now
        if current_time.hour >= 12
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end
        resp.finish
    end
end