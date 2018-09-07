class UsersController < ApplicationController
  before_action :set_user, only: [:edit,:update,:show]

  def new
    @user = User.new    
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to thanks_path
  end

  def show
    @user_orders = @user.orders
   end

  def edit
  end

  def update
    if @user.update(user_params)
    flash[:success] = "Your account was updated successfully"
    redirect_to root
    else
    render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password) 
    end

    def set_user
      @user = User.find(params[:id])
    end

end