require "discordrb"

module DqDiscordBot::Events
    extend Discordrb::EventContainer

    playing do |event|
        if event.game.upcase.include? "DRAGON QUEST"

            channels = event.server.channels

            general_channel = channels.detect { |c| c.name == "general" }

            if general_channel != nil
                general_channel.send_message "**#{event.user.username}** is playing **#{event.game}!**" 
            end
        end
    end
end