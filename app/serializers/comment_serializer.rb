class CommentSerializer < ActiveModel::Serializer
  attributes :id, :info
  belongs_to :post
end
