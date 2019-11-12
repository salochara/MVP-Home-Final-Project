class RecipePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def scrapeing_recipe?
      true
    end

    def index?
      true
    end

  end
end
