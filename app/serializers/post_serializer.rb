class PostSerializer < ActiveModel::Serializer
  attributes :id, :information
  has_many :comments
end
