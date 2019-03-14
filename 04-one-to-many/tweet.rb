class Tweet
  # Tweet#message that returns a string
  # Tweet#user that returns an instance of the user class
  attr_reader :message, :user

  @@all = []

  def initialize(message, user)
    @message = message
    @user = user

    @@all << self # shovel in Tweet instance to all array
  end

  # Tweet#username that returns the username of the tweet's user
  def username
    user.username
    # self.user.username
  end

  # def other_tweets
  #   user.tweets
  # end

  # Tweet.all that returns all the Tweets created.
  def self.all # class reader for that class variable
    @@all
  end
end

# tweet = Tweet.new(...)
# tweet.user.username
