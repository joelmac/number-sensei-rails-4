#!/bin/bash

# Reference:
# http://railscasts.com/episodes/366-sidekiq?view=asciicast

echo '# Start the Redis server, if it is not yet running.'
redis-server /usr/local/etc/redis.conf

echo '# Starting Sidekiq process.'
bundle exec sidekiq -L log/sidekiq.log -C config/sidekiq.yml -d
