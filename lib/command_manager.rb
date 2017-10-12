require_relative "client"
require_relative "commands/ping"
require_relative "commands/random"

module DqDiscordBot
    class CommandManager
        def initialize(client)
            ping = Ping.new
            ping.setup(client)

            random = Random.new
            random.setup(client)
        end
    end
end