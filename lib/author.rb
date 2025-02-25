class Author
   attr_accessor :name, :author,:posts
  
   def initialize(name)
    @name = name
    @posts = []
  end 
  
  def posts
    Post.all
  end 

  def add_post(post)
    @posts << post
    post.author = self
  end 
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
  end

  def self.post_count
    Post.all.count
  end 

end 