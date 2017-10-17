require "oj"
require "redis"

require_relative "../entities/player"

module DqDiscordBot::Operations
  class CreatePlayerOperation
    def create(id, username)
      
      db = Redis.current

      db_user = db.get(id.to_s)

      if db_user == nil
        new_user = DqDiscordBot::Entities::Player.new
        new_user.id = id
        new_user.name = username
        new_user.in_battle = false
        new_user.xp = 0

        db.set(id, Oj.dump(new_user))
        
        response_message = "Your player has been created successfully!"
      else 

        parsed_user = Oj.load(db_user)

        response_message = "Hey, #{parsed_user.name}, you've already created a player!"
      end

      return response_message
    end
  end
end