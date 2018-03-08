class User
=begin
1. Ever user should have associated tags and journals.
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

  def tags
    Tag.all.select {|tag| tag.user == self}.map {|tag| tag.name}
  end

  def create_journal_entry(tag_name, mood, entry)
    tag = Tag.new(tag_name)
    journal_entry = Journal.new(tag, mood, entry)
    journal_entry.user = self
    
  end
  def journals
    Journal.all.each {|journal| journal.user == self}
  end

end
