require 'uri'
require 'net/http'
require 'json'

module DogUtil
  def dog_url
    default_url = 'https://fisiocarepet.com.br/wp-content/uploads/2021/07/SAO-JOSE-DOS-CAMPOS.png'

    response = Net::HTTP.get_response(URI('https://dog.ceo/api/breed/retriever/golden/images/random'))

    return JSON.parse(response.body)['message'] if response.is_a?(Net::HTTPSuccess)

    default_url
  end
end
