class FilesController < ApplicationController
  require "csv"

  def home
  end

  def import
    return redirect_to root_path, notice: "Select CSV only CSV file please" unless params[:file].content_type == "text/csv"
    # binding.b ＃use for  debugging can visualise what happen inside the request
    redirect_to root_path, notice: "file successufully imported!"
  end
end
