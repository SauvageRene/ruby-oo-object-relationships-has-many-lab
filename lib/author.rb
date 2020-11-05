class Author
    attr_accessor :name, :posts
    def initialize(name)
        @name = name
    end
    def posts
        Post.all
    end
    def add_post(a_post)
        a_post.author = self
    end
    def add_post_by_title(posts)
        title = Post.new(posts)
        add_post(title)
    end
    def self.post_count
        Post.all.count 
    end
end