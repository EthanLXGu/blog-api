class UsersController < ApplicationController
	skip_before_filter :authenticate_user!, only: [:show]
	before_action :set_user, only: [:show]

	# GET /users/1
	def show
	    render json: @user, include: ["posts"]
	end

	def me
        render json: current_user
	end

	private

    def set_user
      @user = User.find(params[:id])
    end
end