class Tag
  attr_reader :title

  @@all = []

  def initialize(title) # maybe tweet?
    @title = title

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create(tag_title)
    found_tag = @@all.find do |tag|
      tag.title.include?(tag_title)
      # tag.title == tag_title
    end

    if found_tag
      return found_tag
    else
      Tag.new(tag_title)
    end
  end

end
