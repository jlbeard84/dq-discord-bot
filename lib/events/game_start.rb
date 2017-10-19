require "discordrb"

require_relative "../managers/game_state_manager"

module DqDiscordBot::Events
    extend Discordrb::EventContainer

    message do |event|
      
      if event.content.upcase.start_with? "!GAME"

        command_params = ""
        
        if event.content.length > 5 
          command_params = event.content.slice(5, event.content.length - 5)
        end

        command_params.strip!
        
        manager = DqDiscordBot::Managers::GameStateManager.new
        
        result = manager.run(command_params, event.user.id, event.user.username)

        event.channel.send_message result
      end
    end
end