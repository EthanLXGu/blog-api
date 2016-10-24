class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :authentication_token
end
