class Tag
=begin
1. Every tag is just a tag.
=end
  attr_accessor :name
@@all=[]
  def initialize(name)
    @name = name

    @@all << self
  end
  def self.all
  @@all
  end

  def self.find_journals(tag_name)
    Journal.all.select{|journal| journal.tag.name == tag_name}
  end

end
