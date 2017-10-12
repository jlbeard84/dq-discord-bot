module DqDiscordBot::Operations
  class RandomNumberOperation
    def run(count, min, max)
      
        response_message = ""
        
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
end