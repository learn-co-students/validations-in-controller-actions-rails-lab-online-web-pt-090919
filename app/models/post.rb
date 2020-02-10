class Post < ActiveRecord::Base
  
  validates :title, presence: true
  validates :category, presence: true
  validate :categorical
  validates :content, length: {minimum: 100}
  
  def categorical
    unless self.category == "Fiction" or self.category == "Non-Fiction"
      errors.add(:category, "must be Fiction or Non-Fiction")
    end
  end
  
end
