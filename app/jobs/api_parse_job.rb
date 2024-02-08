class ApiParseJob
  include Sidekiq::Job

  require 'open-uri'
  require 'json'


  def perform(url)

    file_serialized = URI.open(url).read
    users = JSON.parse(file_serialized)

    users.each do |user|
      User.create(user)
    end

  end
end
