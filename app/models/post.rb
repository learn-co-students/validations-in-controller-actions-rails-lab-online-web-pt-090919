class Post < ActiveRecord::Base
    validates :title, presence: true # make sure it is not blank 
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)} # Only option that can be chosen
    validates :content, length: { minimum: 100 } 
end

# - The title cannnot be blank 
# - The category is either Fiction or Non-Fiction 
# - The content is at least 100 characters long