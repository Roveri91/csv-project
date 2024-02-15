class ImportCsvJob < ApplicationJob
  require 'csv'
  queue_as :default

  def perform(csv_file)
    # file = CsvFile.find(csv_id).file_attachment.download
    file = csv_file.file_attachment.download
    @user_hash = {}

    CSV.parse(file, headers: true) do |row|
      @user_hash[:name] = row['Name']
      @user_hash[:age] = row['Age']
      @user_hash[:city] = row['City']
      unless User.exists?(name: @user_hash[:name], age: @user_hash[:age], city: @user_hash[:city])
        User.create(@user_hash)
      end

      # serializing and saving User on Redis
      # serialized_user = new_user.attributes.to_json
      # redis = Redis.new
      # redis.set("user:#{new_user.id}",serialized_user)
    end
  end
end
