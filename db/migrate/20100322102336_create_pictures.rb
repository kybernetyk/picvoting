class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.column  :title,           :string
      t.column  :url_name,        :string
      t.column  :description,     :string
      t.column  :path_to_file,    :string
      t.column  :rating,          :integer
      t.column  :number_of_votes, :integer
      t.column  :overall_rating,  :float
      
      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
