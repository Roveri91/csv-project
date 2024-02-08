class CsvFilesController < ApplicationController
  require "csv"

  def index
    @csv_files = CsvFile.all
    @users = User.all
  end

  def new
    @csv_file = CsvFile.new
  end

  def create
    @csv_file = CsvFile.new(csv_file_parmas)
    if @csv_file.save
      ImportCsvJob.perform_later(@csv_file)
      redirect_to csv_files_path, notice: "file saved on active storage"
    end
  end

  # def import
  #   file = params[:file]
  #   return redirect_to root_path, notice: "Select CSV only CSV file please" unless file.content_type == "text/csv"
  #   # binding.b   use for  debugging can visualise what happen inside the request


  #   file = File.open(file)
  #   csv = CSV.parse(file, headers: true)
  #   #col_sep: ';' if the file is separeted by semicol instead of comma
  #   @user_hash = {}

  #   csv.each do |row|
  #     @user_hash[:name] = row["Name"]
  #     @user_hash[:age] = row["Age"]
  #     @user_hash[:city] = row["City"]

  #     # create model passing the hash
  #     User.create(@user_hash)
  #   end

  # redirect_to root_path, notice: "file successufully imported!"
  #end

  private

  def csv_file_parmas
    params.require(:csv_file).permit(:file)
  end


end
