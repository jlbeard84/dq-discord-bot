require "discordrb"
require "figaro"

module DqDiscordBot
    class Client < Discordrb::Commands::CommandBot
        def initialize(loader)
            loader.load

            loader_token = Figaro.env.discord_bot_token
            loader_client_id = Figaro.env.discord_client_id
            command_prefix = "!"

            super token: loader_token, 
                  client_id: loader_client_id,
                  prefix: command_prefix

                  
        end

        def run(async = false)
            puts "---------------------------------------------"
            puts "This bot's invite URL is #{self.invite_url}"
            puts "Click on it to invite it to your server."
            puts "---------------------------------------------"

            super(async)
        end
    end
end