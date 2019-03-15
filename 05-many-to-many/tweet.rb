class Tweet
  attr_reader :message, :user#, :tags

  @@all = []

  def initialize(new_message, user)
    @message = new_message
    @user = user # belongs to relationship

    # find all the tags in that tweet
    self.message.split.select do |word|
      word.start_with?("#")
    end.map do |tag_title|
      # Tag.new(tag_title, self)
      tag = Tag.find_or_create(tag_title)
      tweet = self

      TweetTag.new(tweet, tag)
    end

    @@all << self
  end

  def username
    user.username
  end

  def self.all
    @@all
  end

  def tags
    tweet_tags = TweetTag.all.select do |tweet_tag|
      tweet_tag.tweet == self
    end

    tweet_tags.map do |tweet_tag|
      tweet_tag.tag
    end
  end
end
