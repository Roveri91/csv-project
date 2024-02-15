class CsvFilesController < ApplicationController
  require 'csv'

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
      redirect_to csv_files_path, notice: 'file saved on active storage'
    end
  end

  private

  def csv_file_parmas
    params.require(:csv_file).permit(:file)
  end
end
