class GuestsController < ApplicationController
before_action :user_init

def user_init
   redirect_to new_user_session_path if user_signed_in? == false
end

def user_render
    render :"ログイン中:#{user.name}"
end

end