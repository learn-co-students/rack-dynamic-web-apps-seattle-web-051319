class Application

  def call(env)
    resp = Rack::Response.new


    pull_1 = Kernel.rand(1..40)
    pull_2 = Kernel.rand(1..40)
    pull_3 = Kernel.rand(1..40)

    resp.write "#{pull_1}... "
    resp.write "#{pull_2}... "
    resp.write "#{pull_3}... "
    resp.write "     "


      if pull_1 > (pull_2 + pull_3)
        resp.write "you've won this time..."
      else
        resp.write "Hahahahhahhhahahahaha! I win again!"
      end
      resp.finish
    end

end
