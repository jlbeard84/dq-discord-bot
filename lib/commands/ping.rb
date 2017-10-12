require "discordrb"

module DqDiscordBot::Commands
    extend Discordrb::Commands::CommandContainer
    
    command :ping do |event|

        response_message = "Hey, #{event.user.name}!"
        response_message += " It took #{Time.now - event.timestamp} seconds to generate this message."

        event.respond response_message
    end
end