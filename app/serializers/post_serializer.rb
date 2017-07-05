class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_src, :body, :price, :location, :user
  belongs_to :user

  def image_src
    object.image.url
  end
end
