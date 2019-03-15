class User
  attr_reader :username

  @@all = []

  def initialize(username)
    @username = username

    @@all << self
  end

  def post_tweet
    Tweet.new('tweet message', self)
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

  def self.all
    @@all
  end
end
