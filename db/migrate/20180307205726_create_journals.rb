class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
     t.string :location
     t.string :mood
     t.string :entry
    end

  end
end
