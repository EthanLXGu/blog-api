class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :authentication_token
  has_many :posts
end
