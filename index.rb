require "discordrb"
require "figaro"

ENV['FIGARO_ENVIRONMENT'] = "#{ENV['RACK_ENV']}" || 'development'

Figaro.application = Figaro::Application.new(environment: ENV['FIGARO_ENVIRONMENT'], path: 'config/application.yml')

Figaro.load

Figaro.require_keys("discord_bot_token", "discord_client_id")

bot = Discordrb::Bot.new token: Figaro.env.discord_bot_token!, 
                         client_id: Figaro.env.discord_client_id!

puts "This bot's invite URL is #{bot.invite_url}"
puts "Click on it to invite it to your server."

bot.message(content: "Ping!") do |event|
    event.respond "Pong!"
end

bot.run