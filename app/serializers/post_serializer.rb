class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_src, :body, :user
  belongs_to :user
  has_many :comments

  def image_src
    object.image.url
  end
end
