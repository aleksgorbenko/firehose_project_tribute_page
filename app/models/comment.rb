class Comment < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 20, minimum: 2}
  validates :text, presence: true, length: {minimum: 2}
end
