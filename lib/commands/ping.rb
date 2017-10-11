require_relative "../client"

module DqDiscordBot
    class Ping
        def setup(client)
            client.message(content: "Ping!") do |event|
                event.respond "Pong!"
            end
        end
    end
end