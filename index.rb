require "discordrb"
require "figaro"

require_relative "lib/config_loader"
require_relative "lib/client"

module DqDiscordBot
    loader = ConfigLoader.new

    client = Client.new(loader)

    client.message(content: "Ping!") do |event|
        event.respond "Pong!"
    end

    client.run
end