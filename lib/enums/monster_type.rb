require "ruby-enum"

module DqDiscordBot::Enums
    class MonsterType
        include Ruby::Enum

        define :SLIME, "0"
        define :GIANT_RAT, "1"
    end
end