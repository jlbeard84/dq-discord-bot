require "discordrb"
require "figaro"

require_relative "lib/client"
require_relative "lib/config_loader"
require_relative "lib/commands/ping.rb"
require_relative "lib/commands/random.rb"

module DqDiscordBot
    loader = ConfigLoader.new

    client = Client.new(loader)
    client.setup

    #command_manager = CommandManager.new(client)

    client.run
end