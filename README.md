[![Build Status](https://travis-ci.org/jlbeard84/dq-discord-bot.svg?branch=master)](https://travis-ci.org/jlbeard84/dq-discord-bot)

# dq-discord-bot
Discord bot to simulate a DQ battle.

## Prerequisites

- Ruby
- Redis

## Getting started

First, install bundle:

    $ bundle install

Next, run figaro install 

    $ bundle exec figaro install

or manually create config file at config/application.yml. 

It needs to contain the following keys:

    discord_bot_token: [your discord bot token]
    discord_client_id: [your discord client id]
    redis_host: [your redis host ip/hostname]
    redis_port: [your redis server port]
    redis_db: [your redis db name for the app]

Finally, execute index.rb

    $ bundle exec ruby bin/index.rb
    
## Testing

Kind of ugly, but for now (Minitest) tests can be run via the shell with:

    $ bundle exec ruby -Ilib -e 'ARGV.each { |f| require f }' ./tests/**/test_*.rb
