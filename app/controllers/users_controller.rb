class UsersController < ApplicationController
  def edit_email
  end

  def profile
    @user = current_user
    authorize @user
  end

  def edit_first_name
    @user = current_user
    authorize @user
  end

  def edit_last_name
    @user = current_user
    authorize @user
  end

  def edit_email
    @user = current_user
    authorize @user
  end

  def edit_bio
    @user = current_user
    authorize @user
  end

  def edit_profile_pic
    @user = current_user
    authorize @user
  end
end
