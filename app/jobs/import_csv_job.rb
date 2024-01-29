class ImportCsvJob < ApplicationJob
  queue_as :default

  def perform(csv_id)
    # Do something later

    file = CsvFile.find(csv_id).file_attachment.download

    @user_hash = {}

    CSV.parse(file, headers: true) do |row|
      @user_hash[:name] = row["Name"]
      @user_hash[:age] = row["Age"]
      @user_hash[:city] = row["City"]

      User.create(@user_hash)
    end
      # csv = CSV.parse(file, headers: true)
      # @user_hash = {}


    # csv.each do |row|
    #   @user_hash[:name] = row["Name"]
    #   @user_hash[:age] = row["Age"]
    #   @user_hash[:city] = row["City"]

    #   User.create(@user_hash)
    # end


  end
end
