class CsvFilesController < ApplicationController
  def index
    @csv_files= CsvFile.all
  end

  def new
    @csv_file = CsvFile.new
  end

  def create
    @csv_file = CsvFile.new(csv_file_parmas)
    @csv_file.save
  end

  private

  def csv_file_parmas
    params.require(:csv_file).permit(:file)
  end


end
