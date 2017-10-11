require "discordrb"
require "figaro"

module DqDiscordBot
    class Client < Discordrb::Bot
        def initialize(loader)
            loader.load

            loader_token = Figaro.env.discord_bot_token
            loader_client_id = Figaro.env.discord_client_id

            super token: loader_token, 
                  client_id: loader_client_id
        end

        def run
            puts "---------------------------------------------"
            puts "This bot's invite URL is #{self.invite_url}"
            puts "Click on it to invite it to your server."
            puts "---------------------------------------------"

            super
        end
    end
end