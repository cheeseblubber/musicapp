class SessionsController < ApplicationController

	def create
		user = current_user
		login!(user)
		redirect_to user_url
	end

	private

	def session_params
		params.require(:session)


end
