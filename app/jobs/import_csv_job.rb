class ImportCsvJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    file = params[:file]

    file = File.open(file)
    csv = CSV.parse(file, headers: true)

    @user_hash = {}

    csv.each do |row|
      @user_hash[:name] = row["Name"]
      @user_hash[:age] = row["Age"]
      @user_hash[:city] = row["City"]

      User.create(@user_hash)
    end


  end
end
