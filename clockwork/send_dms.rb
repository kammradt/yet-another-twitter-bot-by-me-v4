# frozen_string_literal: true

require 'clockwork'
require_relative '../service/twitter_client'
require_relative '../service/twitter_service'

module Clockwork
  every(1.day, 'Dogs during the morning', at: '06:00') do
    twitter = TwitterService.new(TwitterClient.twitter_instance)
    time = Time.now.strftime('%H:%M:%S.%L')
    message = "Cachorros das #{time}"

    twitter.send_doggo_dm(ENV['user'], message)
  end

  every(1.day, 'Dogs during the afternoon', at: '15:00') do
    twitter = TwitterService.new(TwitterClient.twitter_instance)
    time = Time.now.strftime('%H:%M:%S.%L')
    message = "Cachorros das #{time}"

    twitter.send_doggo_dm(ENV['user'], message)
  end

  every(1.day, 'Dogs during the night', at: '20:00') do
    twitter = TwitterService.new(TwitterClient.twitter_instance)
    time = Time.now.strftime('%H:%M:%S.%L')
    message = "Cachorros das #{time}"

    twitter.send_doggo_dm(ENV['user'], message)
  end
end
