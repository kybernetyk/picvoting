# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  #the title of this site
  def site_title
    return "Schlampen.be"
  end
   
  def statistic_number_of_pictures
    return Picture.all.count
  end
  
  def statistic_number_of_votes
    return Vote.all.count    
  end
  
  def last_voted_picture
    if (session[:last_voted_picture_id])
      return Picture.find(session[:last_voted_picture_id])
    end
  end
  
  
  def twitter_button (options = {})
    return "<a href='http://twitter.com/home?status=#{options[:title]} #{options[:url]}' target='_blank'><img src='/images/tweet-this-1.png'></a>";
  end
  
  def facebook_button (options = {})
    return "<a href='http://www.facebook.com/sharer.php?u=#{options[:url]}' title='Farmville This!' target='_blank'><img src='/images/fb-this.png'></a>";
  end
  
  def banner_720
    '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
		<script type="text/javascript" src="http://www.banner-rotation.com/rotate.aspx?ref=240051&site=2832&pool=3"></script>
		<noscript><a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=2832&type=b1&bnb=1" target="_blank"><img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=2832&b=1" border="0" /></a><br /></noscript>
		<!-- END PARTNER PROGRAM -->'
  end
  
  def banner_skyscraper
    	'<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
			<script type="text/javascript" src="http://www.banner-rotation.com/rotate.aspx?ref=240051&site=2832&pool=5"></script>
			<noscript><a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=2832&type=b1&bnb=1" target="_blank"><img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=2832&b=1" border="0" /></a><br /></noscript>
			<!-- END PARTNER PROGRAM -->';    
  end
       
end
