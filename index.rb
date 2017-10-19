require "discordrb"
require "figaro"
require "redis"

require_relative "lib/client"
require_relative "lib/config_loader"
require_relative "lib/commands/ping"
require_relative "lib/commands/random"
require_relative "lib/db/dq_db"
require_relative "lib/events/game_start"
require_relative "lib/events/playing_announcer"

require_relative "lib/monsters/giant_rat"
require_relative "lib/monsters/slime"

module DqDiscordBot
    loader = ConfigLoader.new

    db = DqDiscordBot::Db::DqDb.new(loader)
    Redis.current = db

    client = Client.new(loader)
    client.setup

    client.run
end