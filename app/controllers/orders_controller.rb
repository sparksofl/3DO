class OrdersController < ApplicationController
	def new
		@model_id = params[:format]
		@order = Order.new
		@materials = Material.all
	end

	def create
		@order = current_user.orders.new(get_params)
		if @order.save
			redirect_to orders_path
		else
			redirect_to '/order/new'
		end
	end
end
