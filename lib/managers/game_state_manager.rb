require_relative "../operations/get_player_operation"

module DqDiscordBot::Managers
    class GameStateManager
        def run(params, user_id, username)

            puts "running"

            get_player_operation = DqDiscordBot::Operations::GetPlayerOperation.new
            player = get_player_operation.get(user_id, username)

            #TODO: if player.current_battle == nil, create new battle, then start battle loop
            response = "-------------------\nReady to go, #{player.name}\n-------------------"
            return response
        end
    end
end