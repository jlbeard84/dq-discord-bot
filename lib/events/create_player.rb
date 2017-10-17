require "discordrb"

require_relative "../operations/create_player_operation"

module DqDiscordBot::Events
    extend Discordrb::EventContainer

    message do |event|
      
      if event.content.upcase.start_with? "!NEW"

        operation = DqDiscordBot::Operations::CreatePlayerOperation.new
        result_message = operation.create(event.user.id, event.user.username)

        event.channel.send_message result_message
      end
    end
end