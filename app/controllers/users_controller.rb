class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  before_action :check_if_logged_out, only: [:new, :create]

  before_action :check_if_logged_in, only: [:index, :show, :edit, :update]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    id = params["id"]
    @user = User.find_by(id: id)
    @send_orders = Order.where(sender_id: @current_user.id)
    @receive_orders = Order.where(receiver_id: @current_user.id)
  end

  # GET /users/new
  def new
    @user = User.new
  end





  def create
    @user = User.new( user_strict_params )
      if @user.save
        session[:user_id] = @user.id
        if params[:user][:link]
          cloudinary = Cloudinary::Uploader.upload( params["user"]["link"])
          @user.link = cloudinary["url"]
        end
        @user.save
        redirect_to user_path( @user )
      else
          render :new
      end
  end

  def edit
    id = params["id"]
    @user = User.find_by(id: id)
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    user = User.find_by(id: params["id"])
    user.update( user_strict_params )
    if params[:user][:link]
      cloudinary = Cloudinary::Uploader.upload( params["user"]["link"])
      user.link = cloudinary["url"]
    end
    user.save
    redirect_to user_path(user)
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    user = User.find_by(id: params["id"])
    user.destroy
    redirect_to users_path()
  end

  private
    def set_user
      @user = User.find_by(id: params[:id])
    end

    def user_strict_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :username)
    end

    def check_if_logged_out
      if @current_user
        flash[:error] = "You are already logged in"
        redirect_to "/users"
      end
    end

    def check_if_logged_in
      unless @current_user
        flash[:error] = "You need to be logged in for that"
        redirect_to "/login"
      end
    end
end
