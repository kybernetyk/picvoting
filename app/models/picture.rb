class Picture < ActiveRecord::Base
  def to_param
    return title.parameterize
  end
  
  def hosting_filename
    return path_to_file.gsub('public','');
  end

  def self.random
      ids = connection.select_all("SELECT id FROM pictures")
      find(ids[rand(ids.length)]["id"].to_i) unless ids.blank?
  end
  
  def overall_rating_calc
    orating = 0.0;
    
    orating = rating.to_f / number_of_votes.to_f;
    
    return orating
  end

end
