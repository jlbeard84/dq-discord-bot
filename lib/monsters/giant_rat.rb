require_relative "../enums/monster_type"
require_relative "../entities/monster"

module DqDiscordBot::Monsters
    class GiantRat < DqDiscordBot::Entities::Monster
        
        def initialize()
            hp = generate_hp(5, 7)
            mp = 0

            super monster_type: DqDiscordBot::Enums::Monster_Type::GIANT_RAT,
                  hp: hp,
                  mp: mp                  
        end
    end
end