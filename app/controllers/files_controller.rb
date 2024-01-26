class FilesController < ApplicationController
  require "csv"

  def home
  end

  def import
    file = params[:file]
    return redirect_to root_path, notice: "Select CSV only CSV file please" unless file.content_type == "text/csv"
    # binding.b   use for  debugging can visualise what happen inside the request

    file = File.open(file)
    csv = CSV.parse(file, headers: true)
    #col_sep: ';' if the file is separeted by semicol instead of comma
    @user_hash = {}

    csv.each do |row|
      @user_hash[:name] = row["Name"]
      @user_hash[:age] = row["Age"]
      @user_hash[:city] = row["City"]

      # create model passing the hash
      # User.create(@user_hash)
    end

    redirect_to root_path, notice: "file successufully imported!"
  end

  def new
    # return redirect_to root_path, notice: "uploading file"
    @csv_file = CsvFile.new
  end

  def create
    @csv_file = CsvFile.new(csv_params[:file])
    if @csv_file.save
      rederect_to root_path, notice: "file uploaded successfully"
    end
  end

  private

  def csv_params
    params.require(:file).permit(:file)
  end
end
