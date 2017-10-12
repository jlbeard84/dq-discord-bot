require "discordrb"

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
        if min == nil || max == nil
            response_message = "In order to use !random, a minimum and maximum must be stated.\n\n**Example:** '!random 1 10' will generate a random number between 1 and 10."
        else 
            min = min.to_i
            max = max.to_i
            count = count.to_i

            if min > max
                tmp = max
                max = min
                min = tmp
            end

            if count < 1
                count = 1
            end
                
            response_message = "------\nGenerating"
            
            if count == 1
                response_message += " a random number"
            else 
                response_message += " #{count} random numbers"
            end 
                
            response_message += "between #{min.to_s} and #{max.to_s}\n------\n" 
            
            (1..count).each do
                response_message += "#{(rand(min..max)).to_s}\n"
            end
        end

        return response_message
    end
end