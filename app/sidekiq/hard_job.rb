class HardJob
  include Sidekiq::Job

  require 'csv'

  def perform(*args)
    # Do something
  end

  def perform_async(file)
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

  # HardJob.perform_async('bob', 5)
end
