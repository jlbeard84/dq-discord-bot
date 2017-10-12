require_relative "../client"

module DqDiscordBot
    class Random
        def setup(client)
            client.command :random do |event,min,max|

                if min == nil || max == nil
                    response_message = "In order to use !random, a minimum and maximum must be stated.\n\nExample: '!random 1 10' will generate a random number between 1 and 10."
                else 
                    if min > max
                        tmp = max
                        max = min
                        min = tmp
                    end
                     
                    response_message = "------\nGenerating a random number between #{min.to_s} and #{max.to_s}\n------\n" + (rand(min.to_i..max.to_i)).to_s
                end

                event.respond response_message
            end
        end
    end
end