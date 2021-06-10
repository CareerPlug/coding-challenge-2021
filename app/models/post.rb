class Post < ApplicationRecord
    has_many :comments, dependent: :destroy

    def self.search(search)
        if search
            post = Post.where(title: search).or(Post.where(body: search))

            if post
                self.where(id: post)
            else
                Post.all
            end
        else
            Post.all 
        end
    end

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
