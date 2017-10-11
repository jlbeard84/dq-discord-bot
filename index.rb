require "discordrb"
require "figaro"

require_relative "lib/client"
require_relative "lib/command_manager"
require_relative "lib/config_loader"

module DqDiscordBot
    loader = ConfigLoader.new

    client = Client.new(loader)

    command_manager = CommandManager.new(client)

    client.run
end