class UserSerializer < ActiveModel::Serializer
  has_many :posts
  attributes :id, :username, :email
end
