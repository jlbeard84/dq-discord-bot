require_relative "client"
require_relative "commands/ping"

module DqDiscordBot
    class CommandManager
        def initialize(client)
            ping = Ping.new
            ping.setup(client)
        end
    end
end