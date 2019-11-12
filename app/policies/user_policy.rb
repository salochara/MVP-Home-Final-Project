class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def index?
    true
  end

  def update?
    true
  end

  def show?
    true
  end

  def cuisines_show?
    true
  end

  def cuisines_edit?
    true
  end

  def interests_show?
    true
  end

  def interests_edit?
    true
  end

  def matching?
    true
  end

  def bio_show?
    true
  end

  def bio_edit?
    true
  end

  def set_user_location?
    true
  end

  def post_locate?
    true
  end

  def full_profile?
    true
  end

  def welcome_page?
    true
  end

  def registration_completed?
    true
  end
end
