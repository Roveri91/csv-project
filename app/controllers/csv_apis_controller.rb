class CsvApisController < ApplicationController
  require 'json'
  require 'open-uri'

  def index
  end

  def api_download

    url  = "http://localhost:4000/users"

    file_serialized = URI.open(url).read
    user = JSON.parse(file_serialized)

    # CSV.read(file_serialized)

    # CSV.foreach(file_serialized, headers: :first_row) do |row|
    #   puts "#{row['name']}"
    # end

    redirect_to :root, notice: user
  end
end
