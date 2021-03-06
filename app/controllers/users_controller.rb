class UsersController < ApplicationController
  before_action :set_user, only: [:edit,:update,:show]
  before_action :require_same_user

  def index
    redirect_to root_path
  end

  def new
    @user = User.new    
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to thanks_path
    else
      render 'new'
    end
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

    def require_same_user
      if current_user != @user
        flash[:danger] = "You can only view your own profile"  
        redirect_to root_path
      end
    end
end


