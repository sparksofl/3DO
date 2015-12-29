class OrdersController < ApplicationController
	def show
		@order = Order.find(params[:id])
	end

	def new
		@model_id = params[:format]
		@order = Order.new
		@materials = Material.all
	end

	def create
		@order = current_user.orders.new(get_params)
		if @order.save
			redirect_to order_path(@order)
		else
			redirect_to '/order/new'
		end
	end

	private
	def get_params
		params.require(:order).permit(:address, :card_num, :price, :material_id,
			:model_id)
	end
end