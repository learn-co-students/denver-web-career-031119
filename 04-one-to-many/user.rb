class User
  # User#username reader method
  attr_reader :username#, :tweets: violates SST

  @@all = []

  # User#initialize which takes a username
  def initialize(username)
    @username = username
    # @tweets = []: violates SST

    @@all << self
  end

  # User#post_tweet that takes a message, creates a new tweet, and adds it to the user's tweet collection
  def post_tweet
    # @tweets << tweet: violates SST
    Tweet.new('tweet message', self)
  end

  # User#tweets that returns an array of Tweet instances
  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
    # tweets = []
    #
    # Tweet.all.each do |tweet|
    #   if tweet.user == self
    #     tweets << tweet
    #   end
    # end
    #
    # tweets
  end

  def self.all # class reader for that class variable
    @@all
  end
end
