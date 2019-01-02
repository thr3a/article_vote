class BeaconsController < ApplicationController

  layout false

  def index
    @url = params[:url]
    @id = params[:id]
    @title = params[:title]
  end

  def test
  end
end
