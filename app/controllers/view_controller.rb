class ViewController < ApplicationController
  def show
    @output = "showing pic with id #{params[:id]} ...";
    
    if (!params[:id])
      redirect_to :action => 'random'
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
    
    @picture_id = pic.id
    @picture_url = pic.hosting_filename
    @picture_title = pic.title

    @stats_num_of_pics = Picture.all.count
    @stats_num_of_votes = Vote.all.count

    if (session[:last_voted_picture_id])
      lastpic = Picture.find(session[:last_voted_picture_id])
      
      @last_voted_picture_id = lastpic.id
      @last_voted_picture_url = lastpic.hosting_filename
      @last_voted_view_link = mainview_url(:id => lastpic.id)
      @last_voted_picture_rating = sprintf("∅ %.2f / %i votes", lastpic.overall_rating,lastpic.number_of_votes)
    end
  end

  def detail
    
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
      pic.save
      
      vote = Vote.new
      vote.picture_id = pic.id
      vote.vote_value = params[:rating].to_i;
      vote.save
      
    end
    
    redirect_to :action => 'random'
  end

  def random
#    render :text => "omg message = #{flash[:picture_id]}";

    #flash[:last_voted_picture_id] = flash[:last_voted_picture_id]

   # redirect_to :action => 'show', :id => Picture.random
   redirect_to mainview_url(:id => Picture.random) #/randompic
    
  end
  
  def reset
    reset_session
    
    render :text => session
  end

end
