class Application
    def call(env)
        resp = Rack::Response.new
        resp.write get_message
        resp.finish
    end

    def get_message
        is_afternoon? ? "Good Afternoon!" : "Good Morning"
    end

    def is_afternoon?
        Time.now.hour >= 12
    end
end