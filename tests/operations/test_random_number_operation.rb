require "minitest/autorun"

require_relative "../../lib/client"
require_relative "../../lib/operations/random_number_operation"

class TestRandomNumberOperation < Minitest::Test
  def test_random_number_operation_returns_a_welcome_message
    test_operation = DqDiscordBot::Operations::RandomNumberOperation.new
    
    test_result = test_operation.run(1, nil, nil)
    
    assert_equal(test_result, "In order to use !random, a minimum and maximum must be stated.\n\n**Example:** '!random 1 10' will generate a random number between 1 and 10.")
  end
end