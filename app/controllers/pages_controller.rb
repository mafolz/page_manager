class PagesController < ApplicationController

  before_filter :set_page, :only => [:show]

  def show
    
  end

  ##########################
  ##  Collection methods  ##
  ##########################
  
  def start
    render :layout => 'intro'
  end

  def news
  end

  protected
  def set_page
    @page = Page.by_path( params[:url] ).first
  end
end
