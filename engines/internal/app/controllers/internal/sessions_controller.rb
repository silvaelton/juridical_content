module Internal
  class SessionsController < ApplicationController
    
    layout 'internal/session'

    def new
      @session = Internal::Session.new
    end

    def create
      @session = Internal::Session.new(set_params)

      if @session.valid? 
        session[:user_id] = @session.user_id
        redirect_to internal.root_path
      else
        render action: :new
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to internal.root_path
    end

    private

    def set_params
      params.require(:session).permit(:email, :password)
    end
    
  end
end