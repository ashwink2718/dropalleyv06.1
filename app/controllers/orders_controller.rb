class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end


  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
      flash[:success] = "Order has been placed."
      redirect_to orderconfirm_path
    else
      render 'new'
    end
  end

  private
    def order_params
      params.require(:order).permit(:name, :email, :apartment, :street_name, :city, :zipcode, :product1, :size1, :product2, :size2, :product3, :size3, :product4, :size4, :product5, :size5, :comment, :phone_number)
    end
end