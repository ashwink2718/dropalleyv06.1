class SiteController < ApplicationController

  def home
    redirect_to user_path(current_user) if logged_in?
  end

  def brands
    
  end

  def thanks
    
  end

  def orderconfirm
    
  end

end