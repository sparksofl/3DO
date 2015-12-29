class SessionsController < ApplicationController
	def new
		#@session = Sessions.new	
	end

	def create
		@user = User.find_by_email(params[:session][:email])
		if @user && @user.authenticate(params[:session][:password])
			session[:user_id] = @user.id
			@user.ip = params[:session][:ip]
			@user.save
			#debug
			redirect_to '/models'
		else
			redirect_to 'login'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end
end
