class ViewController < ApplicationController
  def show
   if (params[:i])
	redirect_to mainview_url(:id => params[:i])
	return
   end

    if (!params[:id])
      #redirect_to :action => 'random'
      redirect_to mainview_url(:id => Picture.random)
      return
    end
    
    pic = nil;
    if (Picture.exists?(params[:id]))
      pic = Picture.find(params[:id])
    else
      pic = Picture.find_by_url_name(params[:id])
    end
    
    if (!pic)
      render :text => "not found lol"
      return;
    end
    
    
    @picture = pic

  end

  def detail
  
	if (params[:pic])
  	  params[:id] = params[:pic];
    end
    
    if (!params[:id])
      render :text => "pic not found!";
      return
    end
    
    @picture = nil;
    if (Picture.exists?(params[:id]))
      @picture = Picture.find(params[:id])
    else
      @picture = Picture.find_by_url_name(params[:id])
    end

    if (!@picture)
      render :text => "no picture found!"
      return
    end
    
    render :layout => 'detail'
    
  end

  def vote
    
    if (!params[:picture_id])
      redirect_to :action => 'random'
      return
    end
    
    pic_id = params[:picture_id];

    pic = Picture.find(pic_id)
    if (pic)
      session[:last_voted_picture_id] = pic_id
      pic.number_of_votes += 1;
      pic.rating += params[:rating].to_i;
      pic.overall_rating = pic.overall_rating_calc
      pic.save
      
      vote = Vote.new
      vote.picture_id = pic.id
      vote.vote_value = params[:rating].to_i;
      vote.save
      
      session[pic.id] = 1;
      
    end
    
   # redirect_to :action => 'random'
   redirect_to mainview_url(:id => Picture.random)
  end

  def random
   redirect_to mainview_url(:id => Picture.random) #/randompic
    
  end
  
  def reset
    reset_session
    
    render :text => session
  end

end
