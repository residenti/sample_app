class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

  # privateメソッド以降のインデントを1段深くすることで、
  # privateメソッドの場所が簡単に見つけやすくなる.
  private

    def user_params
      params.require(:user).permit(:name, :email,
                                   :password, :password_confirmation)
    end
end
