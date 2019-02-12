class RecordController < ApplicationController

  def index

  end

  def import
    Record.import(params[:file])
    redirect_to root_path
  end

end