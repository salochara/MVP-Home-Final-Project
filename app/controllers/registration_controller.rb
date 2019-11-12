class RegistrationController < ApplicationController
  # refactor the authorizations
  layout 'registration'
  def welcome_page
    @user = current_user
    authorize @user
  end

  def cuisines_show
    @user = current_user
    authorize @user
  end

  def cuisines_edit
    authorize current_user
    params[:user][:cuisine_list].each do |cuisine|
      current_user.cuisine_list.add(cuisine)
    end
    current_user.save
    redirect_to registration_interests_path
  end

  def interests_show
    @user = current_user
    authorize @user
  end

  def interests_edit
    authorize current_user
    params[:user][:interest_list].each do |interest|
      current_user.interest_list.add(interest)
    end
    current_user.save
    redirect_to registration_bio_path
  end

  def bio_show
    @user = current_user
    authorize @user
  end

  def bio_edit
    @user = current_user
    authorize @user
    @user.bio = params[:user][:bio]

    params[:user][:restriction_list].each do |restriction|
      @user.restriction_list.add(restriction)
    end
    @user.save
    redirect_to registration_completed_path
  end

  def registration_completed
    @user = current_user
    authorize @user
  end
end
