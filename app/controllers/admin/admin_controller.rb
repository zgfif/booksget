class Admin::AdminController < ApplicationController
  before_action :authenticate_user!, except: :search
  before_action :check_admin


  protected

  def check_admin
  	redirect_to root_path, alert: "You don't have access to this page!" unless current_user.admin?
  end


end