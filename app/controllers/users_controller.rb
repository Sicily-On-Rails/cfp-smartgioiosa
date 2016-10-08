class UsersController < ApplicationController
  before_action :set_user
  def show_proposals
    @proposals = @user.proposals
  end

  def set_user
    @user = current_user
  end

end
