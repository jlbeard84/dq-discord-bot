require "discordrb"

module DqDiscordBot::Events
    extend Discordrb::EventContainer

    message do |event|
      
      if event.content.upcase.start_with? "!GAME"

        event.user.await(:game_start_response) do |start_event|
          start_choice = start_event.message.content
          
          if start_choice.include? "1"
            start_event.respond "Starting game with Slime."
          elsif start_choice.include? "2"
            start_event.respond "Starting game with Dracky."
          else 
            start_event.respond "Invalid choice. Please try again. Pick a (1) Slime or (2) Dracky"
            false
          end
        end

        event.channel.send_message "Ok, #{event.user.username} (#{event.user.id})... starting the game! Pick a (1) Slime or (2) Dracky"    
      end
    end
end