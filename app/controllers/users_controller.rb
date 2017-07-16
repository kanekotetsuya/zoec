class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.new
  end

  def edit
    @user = User.new
  end

  def update
    @user = User.find(params[:id])
    if @user.update(update_params)
      redirect_to root_path, notice: "ユーザー情報を編集しました。"
    else
      flash.now[:alert] = "編集内容に誤りがあります。"
      render :edit
    end
  end


  private
  def update_params
    params.require(:user).permit(:name, :kana_name, :email, :postal_code, :address1, :address2, :phone)
  end

end
