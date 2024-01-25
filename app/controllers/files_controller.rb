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

    binding.b

    redirect_to root_path, notice: "file successufully imported!"
  end
end
