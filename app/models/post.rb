class Post < ApplicationRecord
    has_many :comments # this will allow us to associate many comments to a single post and therefore look up comments associated with a post_id
end

# later, we also want to add a belongs_to association to the comment.rb file to allow us to look up the post that a comment is associated with