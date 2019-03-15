class User
  attr_reader :username

  @@all = []

  def initialize(username)
    @username = username

    @@all << self
  end

  def post_tweet(message)
    Tweet.new(message, self)
  end

  def tweets # has many relationships
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

  def self.all
    @@all
  end
end
