class Application
    def call(env)
        resp = Rack::Response.new
        time = Time.new.hour
        if time < 12
            resp.write "Good Morning!"
        else 
            resp.write "Goof Afternoon!"
        end
        resp.finish
    end


end