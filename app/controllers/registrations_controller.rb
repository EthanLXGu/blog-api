class RegistrationsController < Devise::RegistrationsController
	respond_to :html, :json

	def create
		@user = User.create(user_params)
		# @user = User.create(email: "user@example.com", password: "password")
		if @user.save
      		render json: @user, status: :created, location: @user
    	else
      		render json: @user.errors, status: :unprocessable_entity
    	end
     	# return head :ok
	end

	private
    	# def user_params
     #  		params.require(:user).permit(:email, :password, :authentication_token)
	    # end
	    def user_params
      		res = ActiveModelSerializers::Deserialization.jsonapi_parse(params)
			res
	    end
end