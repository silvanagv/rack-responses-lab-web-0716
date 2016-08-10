class Application

  def call(env)

    resp = Rack::Response.new

    my_time = Time.now.hour

    if my_time < 12
      resp.write "Good Morning"
    else my_time > 12
      resp.write "Good Afternoon!"
    end


    resp.finish

  end

end
