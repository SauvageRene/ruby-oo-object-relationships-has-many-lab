require "pry"
class Post
    attr_accessor :post, :author
    @@all = []
    def initialize(post)
        @post = post
        @@all << self
    end
    def self.all
        @@all
    end
    def title
        self.post
    end
    def author_name
        author.name if author
    end

end