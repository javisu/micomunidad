class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])    
    respond_to do |format|
      format.html
    end
  end

  def new
    @group = Group.new

  end

  def create 
    @group = Group.new(params[:group]) 
    @group.memberships.build(:user_id => current_user.id)
    logger.info @group.users

    @group.users.each do |x|
      @group.memberships.build(:user_id => x.id )
    end

    respond_to do |format|
      if @group.save
        format.html { redirect_to(@group, :notice => 'Success!') }
      else
        format.html { render :action => "new" }
      end
    end

  end
end
