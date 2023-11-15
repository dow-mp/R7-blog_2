class Comment < ApplicationRecord
    belongs_to :post # this allows us to identify and search for the post which an individual comment is associated with (or belongs to)
end
