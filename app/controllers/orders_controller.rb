class OrdersController < ApplicationController

  def new
    @order = Order.new
    @product = Product.find(params[:product_id])
  end

  def create
    @order = Order.new(params[:order])
    @product = Product.find(params[:product_id])

    @order.product = @product

    respond_to do |format|
      if @order.save
        format.html { redirect_to root_path, notice: 'Order was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
end
