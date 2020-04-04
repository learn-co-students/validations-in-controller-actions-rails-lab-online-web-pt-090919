class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :email, uniqueness: true 
end

# - define validations on a model 
# - use the validations state of a model in a response conditional in an action 
