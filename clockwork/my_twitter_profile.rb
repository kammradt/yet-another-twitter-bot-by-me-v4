# frozen_string_literal: true

require 'clockwork'
require_relative '../service/twitter_client'
require_relative '../service/twitter_service'
require_relative '../service/emoji_service'

module Clockwork
  every(1.day, 'Good morning', at: '06:00') do
    twitter = TwitterService.new(TwitterClient.twitter_instance)
    emojis = EmojiService.new.random_emojis
    twitter.tweet("bom dia #{emojis}")
  end

  every(1.day, 'Good Lunch', at: '12:00') do
    twitter = TwitterService.new(TwitterClient.twitter_instance)
    emojis = EmojiService.new.random_emojis
    twitter.tweet("bom almoço #{emojis}")
  end

  every(1.day, 'Good Afternoon', at: '15:00') do
    twitter = TwitterService.new(TwitterClient.twitter_instance)
    emojis = EmojiService.new.random_emojis
    twitter.tweet("boa tarde #{emojis}")
  end

  every(1.day, 'Good Night', at: '22:00') do
    twitter = TwitterService.new(TwitterClient.twitter_instance)
    emojis = EmojiService.new.random_emojis
    twitter.tweet("boa noite #{emojis}")
  end
end
