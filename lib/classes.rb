require 'pry'

class User
=begin A user should have journals and tags.
=end

  attr_accessor :name

  @@users = []

  def initialize(name)
    @name = name
    @@users << self
  end

  def self.all
    @@users
  end

  def self.find_user(user_name)
    self.all.each.detect {|user| user.name == user_name}
  end

  def self.delete_user(user_name)
    self.all.delete(user_name)
  end

end

class Mood

=begin
=end

  attr_accessor :emotion

  def initialize(emotion)
    @emotion = emotion
  end

end

class Journal < ActiveRecord::Base

=begin Journals should have an affiliated user, mood, and tag.
=end

  attr_accessor :entry, :location, :mood

  def initialize(obj)
    super
    @entry = obj[:entry]
    @location = obj[:location]
    @mood = obj[:mood]

    # CREATES THE JOURNAL IN SQL
    #Journal.create(Location: location, Mood: mood, Entry: entry)

  end


end

class Tag

end
