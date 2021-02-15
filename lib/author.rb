class Author
    attr_accessor :name
    def initialize(name)
        @name=name
        @posts=[]
    end

    def add_post(post)
        @posts << post
        post.author=self
    end

    def posts
        Post.all.select {|s| s.author==self}
    end

    def add_post_by_title(title)
        p=Post.new(title)
        p.author=self
    end

    def self.post_count
        Post.all.length
    end
end