class ModelsController < ApplicationController
	before_action :require_user, only: [:index, :show]

	def index
		@models = Model.all
	end

	def show
		@model = Model.find(params[:id])
	end

	def new
		@model = current_user.models.new
	end

	def create
		@model = current_user.models.new(get_params)
		if @model.save
			redirect_to models_path
		else
			redirect_to '/models/new'
		end
	end

	def destroy
		@model = Model.find(params[:id])
		@model.destroy
		redirect_to models_path
	end

	private
	def get_params
		params.require(:model).permit(:name, :image)
	end
end
