require 'uri'
require 'net/http'

module FileUtil
  def filename(img_url)
    "file#{File.extname(img_url)}"
  end

  def create_image_file(img_url)
    File.open(filename(img_url), "w+") { |f| f.write(Net::HTTP.get(URI(img_url))) }

    File.open(filename(img_url))
  end

  def delete_image(img_name)
    File.delete(filename(img_name))
  end
end
