require 'twitter'
require 'dotenv'
Dotenv.load

class TwitterClient
  def self.twitter_instance
    Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['consumer_key']
      config.consumer_secret = ENV['consumer_secret']
      config.access_token = ENV['access_token']
      config.access_token_secret = ENV['access_token_secret']
    end
  end
end
