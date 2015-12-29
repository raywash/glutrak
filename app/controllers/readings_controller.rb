class ReadingsController < ApplicationController
  def index
    @readings = Reading.all
  end
end
