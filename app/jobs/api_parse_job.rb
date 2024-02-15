class ApiParseJob
  include Sidekiq::Job

  require 'open-uri'
  require 'json'

  def perform(url)
    file_serialized = URI.open(url).read
    users = JSON.parse(file_serialized)

    users.each do |user|
      unless User.exists?(name: user[:name], age: user[:age], city: user[:city])
        User.create(user)
      end
      # User.create(user)
    end

  end
end
