require "discordrb"

require_relative "../operations/random_number_operation"

module DqDiscordBot::Commands
    extend Discordrb::Commands::CommandContainer
    
    command :random do |event,min,max|
        event.respond self.generate_random_message(1, min, max)
    end

    command :roll do |event,count,sides|
        event.respond self.generate_random_message(count, 1, sides)
    end

    command :d4 do |event, count = 1|
        event.respond self.generate_random_message(count, 1, 4)
    end

    command :d6 do |event, count = 1|
        event.respond self.generate_random_message(1, 1, 6)
    end

    command :d8 do |event, count = 1|
        event.respond self.generate_random_message(1, 1, 8)
    end

    command :d12 do |event, count = 1|
        event.respond self.generate_random_message(1, 1, 12)
    end

    command :d20 do |event, count = 1|
        event.respond self.generate_random_message(1, 1, 20)
    end

    command :d100 do |event, count = 1|
        event.respond self.generate_random_message(1, 1, 100)
    end

    def self.generate_random_message(count, min, max)
        random_number_operation = DqDiscordBot::Operations::RandomNumberOperation.new
        return random_number_operation.run(1, min, max)  
    end
end