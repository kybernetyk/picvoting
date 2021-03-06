class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.column  :picture_id,  :integer
      t.column  :vote_value,  :integer
      
      t.timestamps
    end
  end

  def self.down
    drop_table :votes
  end
end
