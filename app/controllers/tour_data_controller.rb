class TourDataController < ApplicationController

  before_filter :set_page
  before_filter :set_tour_data

  protected
  
  def set_page
    @page = Page.where(:handle => 'tour-data').first
  end

  def set_tour_data
    @tour_data = TourDatum.last(10)
  end
end
