class Authentication::UsersController < ApplicationController
  skip_before_action :protect_pages
  before_action :set_user, only: %i[ edit update destroy ]

  def index
    @user = User.all.order(id: :asc)
  end

  def new
    @user = User.new
  end

  # GET /categories/1/edit
  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to products_path, notice: t("Usuario Creado.")
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path, notice: "El Usuario ha sido Actualizado." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_path, notice: "El Usuario ha sido Eliminado." }
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
