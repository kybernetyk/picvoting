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
    banner_array = Array.new
    
    banner_array <<  '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b26&bnb=26" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=26" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="728" height="90" /></a><br />
      <!-- END PARTNER PROGRAM -->'

        banner_array <<  '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b32&bnb=32" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=32" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="728" height="90" /></a><br />
      <!-- END PARTNER PROGRAM -->'

      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b4&bnb=4" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=4" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="468" height="60" /></a><br />
      <!-- END PARTNER PROGRAM -->'
      
      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b17&bnb=17" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=17" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="468" height="60" /></a><br />
      <!-- END PARTNER PROGRAM -->'
      
      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <script type="text/javascript" src="http://www.banner-rotation.com/rotate.aspx?ref=240051&site=2832&pool=2"></script>
      <noscript><a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=2832&type=b1&bnb=1" target="_blank"><img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=2832&b=1" border="0" /></a><br /></noscript>
      <!-- END PARTNER PROGRAM -->'
      
      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <script type="text/javascript" src="http://www.banner-rotation.com/rotate.aspx?ref=240051&site=2832&pool=3"></script>
      <noscript><a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=2832&type=b1&bnb=1" target="_blank"><img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=2832&b=1" border="0" /></a><br /></noscript>
      <!-- END PARTNER PROGRAM -->'

      return banner_array.sort_by {rand}.first
  end
  
  def banner_skyscraper
      banner_array = Array.new
      
      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b3&bnb=3" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=3" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="120" height="468" /></a><br />
      <!-- END PARTNER PROGRAM -->'
      
      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b18&bnb=18" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=18" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="120" height="468" /></a><br />
      <!-- END PARTNER PROGRAM -->'
    
      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b33&bnb=33" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=33" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="120" height="600" /></a><br />
      <!-- END PARTNER PROGRAM -->'
      
      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b19&bnb=19" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=19" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="120" height="468" /></a><br />
      <!-- END PARTNER PROGRAM -->'
      
      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b20&bnb=20" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=20" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="120" height="468" /></a><br />
      <!-- END PARTNER PROGRAM -->'
      
      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b21&bnb=21" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=21" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="120" height="468" /></a><br />
      <!-- END PARTNER PROGRAM -->'
      
      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b27&bnb=27" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=27" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="120" height="600" /></a><br />
      <!-- END PARTNER PROGRAM -->'
      
      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b28&bnb=28" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=28" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="120" height="600" /></a><br />
      <!-- END PARTNER PROGRAM -->'
      
      banner_array << '<!-- BEGIN PARTNER PROGRAM - DO NOT CHANGE THE PARAMETERS OF THE HYPERLINK -->
      <a href="http://partners.webmasterplan.com/click.asp?ref=240051&site=3237&type=b29&bnb=29" target="_blank">
      <img src="http://banners.webmasterplan.com/view.asp?ref=240051&site=3237&b=29" border="0" alt="flirt-fever® - Flirt Up Your Life!" width="120" height="600" /></a><br />
      <!-- END PARTNER PROGRAM -->'
      
      return banner_array.sort_by {rand}.first
      
      
  end
       
end
