require_dependency 'internal/application_controller'

module Internal
  class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :destroy, :show]

    def index
      @users = Internal::User.all
    end

    def show
    end

    def new
      @user = Internal::User.new
    end

    def create
      @user = Internal::User.new(set_params)

      if @user.save
        flash[:green] = t(:success) 
        redirect_to action: :index
      else
        render action: :new
      end
    end

    def edit
    end

    def update

      if params[:user][:password].blank?
        params[:user].delete :password
        params[:user].delete :password_confirmation
      end

      if @user.update(set_params)
        flash[:green] = t(:success) 
        redirect_to action: :index
      else
        render action: :new
      end
    end

    def destroy
      if @user.destroy
        flash[:green] = t(:success) 
      else 
        flash[:red] = t(:error)
      end

      redirect_to action: :index 
    end

    private

    def set_params
      params.fetch(:user, {}).permit(:name, :username, :password, :password_confirmation, 
                                     :bio, :email, :status, :administrator, :reviewer, :student,
                                     :viewer, :author, :columnist)
    end

    def set_user
      @user = Internal::User.find(params[:id])
    end
    
  end
end