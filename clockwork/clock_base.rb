module Clockwork
  configure do |config|
    config[:tz] = 'America/Sao_Paulo'
  end

  error_handler do |error|
    puts "Error: #{error}"
  end
end