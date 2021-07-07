# If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime on or after 12 is the afternoon.

class Application
  def call(env)
    resp = Rack::Response.new

    t1 = Time.now.strftime('%H:%M')
    t2 = "12:00" 

    if t1 < t2 
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end