require "redis"

module DqDiscordBot::Db
    class DqDb < Redis
        def initialize(loader)
            loader.load

            host = Figaro.env.redis_host
            port = Figaro.env.redis_port
            db = Figaro.env.redis_db

            super host: host, 
                  port: port,
                  db: db
        end
    end
end