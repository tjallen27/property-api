class UserSerializer < ActiveModel::Serializer
  # Each user has many posts
  has_many :posts
  # State which attributes need to be used
  attributes :id, :username, :email
end
