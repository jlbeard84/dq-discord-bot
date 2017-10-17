module DqDiscordBot::Operations
  class PingOperation
    def run(username, run_time, event_time)
      
      response_message = "Hey, #{username}!"
      response_message += " It took #{run_time - event_time} seconds to generate this message."

      return response_message
    end
  end
end