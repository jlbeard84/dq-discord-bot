require "oj"
require "redis"

require_relative "../entities/player"

module DqDiscordBot::Operations
  class GetPlayerOperation
    def get(id, username)
      
      db = Redis.current

      db_user = db.get(id.to_s)

      if db_user == nil
        new_user = DqDiscordBot::Entities::Player.new
        new_user.id = id
        new_user.name = username
        new_user.current_battle = nil
        new_user.xp = 0

        db.set(id, Oj.dump(new_user))

        return new_user
      else 

        parsed_user = Oj.load(db_user)

        return parsed_user
      end
    end
  end
end