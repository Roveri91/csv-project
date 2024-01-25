class FilesController < ApplicationController
  def home
  end

  def import
    return redirect_to root_path, notice: "Select CSV only CSV file please" unless params[:file].content_type == "text/csv"
    # binding.b
    redirect_to root_path, notice: "file successufully imported!"
  end
end
