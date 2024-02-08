class CsvApisController < ApplicationController
  def index
  end

  def api_download
    redirect_to :root, notice: "YEAH!!"
  end
end
