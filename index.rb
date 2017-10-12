require "discordrb"
require "figaro"

require_relative "lib/client"
require_relative "lib/config_loader"
require_relative "lib/commands/ping"
require_relative "lib/commands/random"
require_relative "lib/events/playing_announcer"

module DqDiscordBot
    loader = ConfigLoader.new

    client = Client.new(loader)
    client.setup

    client.run
end