class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @group = Group.find(1)
    @user = User.new(params[:user])
    @user.email = @user.email.downcase
    if @user.save
      @membership.user
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
