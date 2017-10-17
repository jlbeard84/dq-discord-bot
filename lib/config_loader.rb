require "figaro"

module DqDiscordBot
    class ConfigLoader
        def load
            ENV['FIGARO_ENVIRONMENT'] = "#{ENV['RACK_ENV']}" || 'development'

            Figaro.application = Figaro::Application.new(environment: ENV['FIGARO_ENVIRONMENT'], 
                                                         path: 'config/application.yml')
            
            Figaro.load
            
            Figaro.require_keys("discord_bot_token", "discord_client_id", "redis_host", "redis_port", "redis_db")
        end
    end
end

