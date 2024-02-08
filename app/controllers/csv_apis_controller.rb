class CsvApisController < ApplicationController
  # require 'json'
  # require 'open-uri'

  def index
    @users = User.all
  end

  def api_download

    url  = "http://localhost:4000/users"

    ApiParseJob.perform_async(url)

    # file_serialized = URI.open(url).read
    # users = JSON.parse(file_serialized)

    # users.each do |user|
    #   User.create(user)
    # end

    redirect_to :root, notice: "Successfully Imported from #{url}"
  end
end
