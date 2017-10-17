require "discordrb"

require_relative "../operations/ping_operation"

module DqDiscordBot::Commands
    extend Discordrb::Commands::CommandContainer
    
    command :ping do |event|
        operation = DqDiscordBot::Operations::PingOperation.new
        event.respond operation.run(event.user.name, Time.now, event.timestamp)
    end
end