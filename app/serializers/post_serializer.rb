class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_src, :body, :user
  belongs_to :user

  def image_src
    object.image.url
  end
end
