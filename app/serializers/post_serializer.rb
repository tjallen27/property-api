class PostSerializer < ActiveModel::Serializer
  # attributes to include on page render
  attributes :id, :title, :image_src, :body, :price, :location, :user, :created_at
  # Each post belongs to a user
  belongs_to :user

  def image_src
    object.image.url
  end
end
