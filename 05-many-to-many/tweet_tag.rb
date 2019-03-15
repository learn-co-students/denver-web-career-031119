class TweetTag
  attr_reader :tweet, :tag

  @@all = []

  def initialize(tweet, tag)
    @tweet = tweet
    @tag = tag

    @@all << self
  end

  def self.all
    @@all
  end

end
