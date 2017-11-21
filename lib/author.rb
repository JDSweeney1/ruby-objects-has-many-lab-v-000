class Author
  attr_accessor :name, :posts
  @@all_posts = []
  @@post_count = @@all_posts.size

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    @@all_posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    @@all_posts << post
    post.author = self
  end

  def self.post_count
    @@post_count
  end
end
