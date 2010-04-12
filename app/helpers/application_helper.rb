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
    if (session[:last_voted_picture])
      return Picture.find_by_url_name (session[:last_voted_picture])
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
    <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b32&bnb=32" target="_blank">
    <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=32" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="728" height="90" /></a><br />
    <!-- END PARTNER PROGRAM -->'
  end
  
  def banner_skyscraper
    	'<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b33&bnb=33" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=33" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="120" height="600" /></a><br />
      <!-- END PARTNER PROGRAM -->';    
  end
       
end
