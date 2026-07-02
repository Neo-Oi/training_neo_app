class UsersController < ApplicationController
before_action :user_init
before_action :user_role_init, only: [:new, :edit, :index]

def user_init
   redirect_to new_user_session_path if user_signed_in? == false
end

def user_render
    render :"ログイン中:#{current_user.name}"
end

def user_role_init
    if current_user.member?        
        flash[:notice] = "権限がありません"
        redirect_to user_path(current_user)
    else
    flash[:notice] = "管理者です"
    end
end
end