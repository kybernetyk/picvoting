class ToplistController < ApplicationController
  def index
    render :text => "Lol";
  end

  def top
    @top_pictures = Picture.find(:all, :order =>'overall_rating desc', :limit => 10);

    render :index
  end

  def flop
    @top_pictures = Picture.find(:all, :order =>'overall_rating', :limit => 10);
    
    render :index
  end
end
