include ActionController::Serialization
include ActionController::HttpAuthentication::Token::ControllerMethods
class ApplicationController < ActionController::API
	  before_filter :authenticate_user_from_token!

  	# Enter the normal Devise authentication path,
  	# using the token authenticated user if available
  	before_filter :authenticate_user!, except: :posts

  	private

  	def authenticate_user_from_token!
    	authenticate_with_http_token do |token, options|
	        user_email = options[:email].presence
	      	user = user_email && User.find_by_email(user_email)

	      	if user && Devise.secure_compare(user.authentication_token, token)
	        	sign_in user, store: false
	      	end
    	end
  	end

    def authenticate!
      authenticate_token || render_unauthorized
    end

    def authenticate_token
      authenticate_with_http_token do |token, options|
         User.find_by(authentication_token: token)
       end
    end

    def render_unauthorized
      render json: {
        errors: ['Bad credentials']
      }, status: 401
    end

    def current_user
      authenticate_token
    end
end
