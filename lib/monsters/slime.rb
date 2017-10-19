require_relative "../enums/monster_type"
require_relative "../entities/monster"

module DqDiscordBot::Monsters
    class Slime < DqDiscordBot::Entities::Monster
        
        def initialize()
            hp = generate_hp(3, 5)
            mp = 0

            super monster_type: DqDiscordBot::Enums::Monster_Type::SLIME,
                  hp: hp,
                  mp: mp                  
        end
    end
end