require_relative '../util/file_util'
require_relative '../util/dog_util'

class TwitterService
  include FileUtil
  include DogUtil

  attr_accessor :twitter_client

  def initialize(twitter_client)
    self.twitter_client = twitter_client
  end

  def send_doggo_dm(user_id, message)
    url = dog_url

    twitter_client.create_direct_message_event_with_media(user_id, message, create_image_file(url))
    delete_image(filename(url))
  end

  def tweet(text)
    twitter_client.update(text)
  end
end
