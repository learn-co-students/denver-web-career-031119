class Tweet
  attr_reader :message, :user

  @@all = []

  def initialize(message, user)
    @message = message
    @user = user

    @@all << self
  end

  def username
    user.username
  end

  def self.all
    @@all
  end
end
