require 'fileutils'

class UploadProcessorController < ApplicationController
  def index
    render :text => "LOL"
  end
  
  def perform
     process_dir = "public/upload_and_process/";
     output_dir = "public/pictures/"
    
     
     files_to_process = Dir.new(process_dir).entries
     
     @output = "<pre>\n";

     for f in files_to_process
       if (f == '.' || f == '..')
         next
       end
       
       if (!f.include?('.png') && !f.include?('.jpg') && !f.include?('.jpeg'))
        @output = @output + f + " does not include a proper file ext! skipping to next file.\n";
        next
       end
       
       @output = @output + "\n"
       
       
       pic = Picture.new
       pic.save
       
       pic.title = "Schlampe ##{pic.id.to_s}";
       pic.description = "Dies ist die Schlampe mit der Nummer #{pic.id.to_s} aus unserer grossen Schlampen-Datenbank!"
       pic.rating = 0
       pic.overall_rating = 0.0
       pic.number_of_votes = 0
       
       source_file = process_dir + f;
       dest_file = output_dir + pic.id.to_s + File.extname (f);
       @output = @output + "mv: #{source_file} -> #{dest_file}! picture id = #{pic.id.to_s}: ";
       
       err = FileUtils.cp (source_file, dest_file)
       if (err)
         Picture.delete (pic.id)
         @output =  @output + "copy error. deleting pic with id #{pic.id.to_s}"
         return
       end
      

       if (!FileUtils.rm (source_file))
         @output = @output + "rm error"
       else
         @output = @output + "ok"
       end

       #pic.filename = pic.id.to_s + File.extname (f);
       pic.path_to_file = dest_file;
       pic.save

     end
     @output = @output + "</pre>"

     #render :text => output
   end
end
