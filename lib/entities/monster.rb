module DqDiscordBot::Entities
    class Monster
        attr_accessor :monster_type, :hp, :mp

        def initialize(monster_type, hp, mp)
            @monster_type = monster_type
            @hp = hp
            @mp = mp
        end

        protected
        def generate_hp(min, max)
            return rand(min..max)
        end

        def generate_mp(min, max)
            return rand(min..max)
        end 
    end
end